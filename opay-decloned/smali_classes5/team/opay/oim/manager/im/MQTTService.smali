.class public final Lteam/opay/oim/manager/im/MQTTService;
.super Landroid/app/Service;
.source "MQTTService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/oim/manager/im/MQTTService$CustomBinder;,
        Lteam/opay/oim/manager/im/MQTTService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0002\u0018\u001c\u0018\u0000 \u00122\u00020\u0001:\u0002()B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001b\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\r\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010!R$\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0006\u0012\u0004\u0018\u00010%0#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/MQTTService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "",
        "onCreate",
        "Landroid/content/Intent;",
        "p0",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "d",
        "f",
        "e",
        "",
        "g",
        "()Z",
        "h",
        "i",
        "Lteam/opay/oim/manager/im/AppID;",
        "a",
        "Lteam/opay/oim/manager/im/AppID;",
        "appID",
        "team/opay/oim/manager/im/MQTTService$b",
        "b",
        "Lteam/opay/oim/manager/im/MQTTService$b;",
        "mqttCallback",
        "team/opay/oim/manager/im/MQTTService$a",
        "c",
        "Lteam/opay/oim/manager/im/MQTTService$a;",
        "mqttActionListener",
        "Lteam/opay/oim/manager/im/NetworkConnectionReceiver;",
        "Lteam/opay/oim/manager/im/NetworkConnectionReceiver;",
        "networkConnectionReceiver",
        "",
        "",
        "Lm99;",
        "Ljava/util/Map;",
        "messageSendCallMap",
        "Companion",
        "CustomBinder",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field public static g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field public static final h:Lteam/opay/oim/manager/im/MQTTService$Companion;


# instance fields
.field public a:Lteam/opay/oim/manager/im/AppID;

.field public b:Lteam/opay/oim/manager/im/MQTTService$b;

.field public c:Lteam/opay/oim/manager/im/MQTTService$a;

.field public d:Lteam/opay/oim/manager/im/NetworkConnectionReceiver;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm99;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/oim/manager/im/MQTTService$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/oim/manager/im/MQTTService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/oim/manager/im/MQTTService;->h:Lteam/opay/oim/manager/im/MQTTService$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/oim/manager/im/MQTTService$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lteam/opay/oim/manager/im/MQTTService$b;-><init>(Lteam/opay/oim/manager/im/MQTTService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->b:Lteam/opay/oim/manager/im/MQTTService$b;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/oim/manager/im/MQTTService$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/oim/manager/im/MQTTService$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->c:Lteam/opay/oim/manager/im/MQTTService$a;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->e:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic a(Lteam/opay/oim/manager/im/MQTTService;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/oim/manager/im/MQTTService;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b()Lorg/eclipse/paho/android/service/MqttAndroidClient;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lteam/opay/oim/manager/im/MQTTService;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->l()Lt97;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lada;->a:Lada;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "disconnect:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->s()V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->g()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    :try_start_0
    sget-object v0, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    sget-object v2, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const-string v3, "conOpt"

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :catch_1
    move-exception v0

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    :goto_1
    iget-object v3, p0, Lteam/opay/oim/manager/im/MQTTService;->c:Lteam/opay/oim/manager/im/MQTTService$a;

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->h(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lp97;)Lt97;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :goto_3
    sget-object v1, Lada;->a:Lada;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "doClientConnection :"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_4
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    sget-object v0, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lteam/opay/oim/manager/im/OIMController;->e()Lteam/opay/oim/manager/im/ConnectOptions;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lada;->a:Lada;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "connectOptions :"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lada;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/oim/manager/im/ConnectOptions;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v2, v1

    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    .line 52
    sget-object v3, Lteam/opay/oim/manager/im/MQTTService;->h:Lteam/opay/oim/manager/im/MQTTService$Companion;

    .line 53
    .line 54
    invoke-static {v3, v0}, Lteam/opay/oim/manager/im/MQTTService$Companion;->a(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v3, v1

    .line 60
    :goto_1
    new-instance v4, Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 61
    .line 62
    invoke-direct {v4, p0, v2, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 66
    .line 67
    iget-object v2, p0, Lteam/opay/oim/manager/im/MQTTService;->b:Lteam/opay/oim/manager/im/MQTTService$b;

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->v(Lhe9;)V

    .line 70
    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lteam/opay/oim/manager/im/ConnectOptions;->a()Lteam/opay/oim/manager/im/AppID;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    sget-object v2, Lteam/opay/oim/manager/im/AppID;->OPAY_ANDROID:Lteam/opay/oim/manager/im/AppID;

    .line 82
    .line 83
    :goto_2
    iput-object v2, p0, Lteam/opay/oim/manager/im/MQTTService;->a:Lteam/opay/oim/manager/im/AppID;

    .line 84
    .line 85
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 86
    .line 87
    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v2, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->p(Z)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 97
    .line 98
    const-string v4, "conOpt"

    .line 99
    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    const/16 v5, 0xa

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->q(I)V

    .line 108
    .line 109
    .line 110
    sget-object v2, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 111
    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    const/16 v5, 0x14

    .line 118
    .line 119
    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->r(I)V

    .line 120
    .line 121
    .line 122
    sget-object v2, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 123
    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    if-eqz v0, :cond_6

    .line 130
    .line 131
    sget-object v5, Lteam/opay/oim/manager/im/MQTTService;->h:Lteam/opay/oim/manager/im/MQTTService$Companion;

    .line 132
    .line 133
    invoke-static {v5, v0}, Lteam/opay/oim/manager/im/MQTTService$Companion;->c(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    move-object v5, v1

    .line 139
    :goto_3
    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->u(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 143
    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_7
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v0}, Lteam/opay/oim/manager/im/ConnectOptions;->c()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :cond_8
    if-nez v1, :cond_9

    .line 156
    .line 157
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->s()V

    .line 158
    .line 159
    .line 160
    :cond_9
    const-string v5, "null cannot be cast to non-null type java.lang.String"

    .line 161
    .line 162
    if-eqz v1, :cond_f

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v6, "(this as java.lang.String).toCharArray()"

    .line 169
    .line 170
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->t([C)V

    .line 174
    .line 175
    .line 176
    sget-object v1, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 177
    .line 178
    if-nez v1, :cond_a

    .line 179
    .line 180
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_a
    const/4 v2, 0x1

    .line 184
    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->o(Z)V

    .line 185
    .line 186
    .line 187
    sget-object v1, Lteam/opay/oim/manager/im/MQTTService;->h:Lteam/opay/oim/manager/im/MQTTService$Companion;

    .line 188
    .line 189
    invoke-static {v1, v0}, Lteam/opay/oim/manager/im/MQTTService$Companion;->b(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v7, "{\"terminal_uid\":\""

    .line 199
    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v0}, Lteam/opay/oim/manager/im/MQTTService$Companion;->a(Lteam/opay/oim/manager/im/MQTTService$Companion;Lteam/opay/oim/manager/im/ConnectOptions;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v0, "\"}"

    .line 211
    .line 212
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v1, ""

    .line 220
    .line 221
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_b

    .line 226
    .line 227
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-nez v1, :cond_d

    .line 232
    .line 233
    :cond_b
    sget-object v1, Lteam/opay/oim/manager/im/MQTTService;->g:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 234
    .line 235
    if-nez v1, :cond_c

    .line 236
    .line 237
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_c
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 241
    .line 242
    if-eqz v0, :cond_e

    .line 243
    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v4, "(this as java.lang.String).getBytes(charset)"

    .line 249
    .line 250
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/4 v4, 0x2

    .line 254
    invoke-virtual {v1, v2, v0, v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->w(Ljava/lang/String;[BIZ)V

    .line 255
    .line 256
    .line 257
    :cond_d
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->e()V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    .line 262
    .line 263
    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    .line 268
    .line 269
    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 31
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    .line 32
    .line 33
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->d:Lteam/opay/oim/manager/im/NetworkConnectionReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lteam/opay/oim/manager/im/NetworkConnectionReceiver;

    .line 6
    .line 7
    new-instance v1, Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1;-><init>(Lteam/opay/oim/manager/im/MQTTService;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lteam/opay/oim/manager/im/NetworkConnectionReceiver;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->d:Lteam/opay/oim/manager/im/NetworkConnectionReceiver;

    .line 16
    .line 17
    new-instance v1, Landroid/content/IntentFilter;

    .line 18
    .line 19
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->d:Lteam/opay/oim/manager/im/NetworkConnectionReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lteam/opay/oim/manager/im/MQTTService;->d:Lteam/opay/oim/manager/im/NetworkConnectionReceiver;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/oim/manager/im/MQTTService$CustomBinder;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lteam/opay/oim/manager/im/MQTTService$CustomBinder;-><init>(Lteam/opay/oim/manager/im/MQTTService;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lada;->a:Lada;

    .line 5
    .line 6
    const-string v1, "onCreate"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lada;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->f()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->h()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->d()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->D()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lteam/opay/oim/manager/im/MQTTService;->f:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/oim/manager/im/MQTTService;->i()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
