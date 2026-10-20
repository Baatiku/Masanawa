.class public final Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1$a;
.super Ljava/lang/Object;
.source "MQTTService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final a:Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1$a;->a:Lteam/opay/oim/manager/im/MQTTService$registerNetworkConnectionReceiver$1$a;

    .line 7
    .line 8
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


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lteam/opay/oim/manager/im/MQTTService;->b()Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lteam/opay/oim/manager/im/MQTTService;->b()Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->s()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lteam/opay/oim/manager/im/OIMController;->d(Z)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lada;->a:Lada;

    .line 37
    .line 38
    const-string v1, "networkConnectionReceiver network available mqtt ok"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lada;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lteam/opay/oim/manager/im/OIMController;->d(Z)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lada;->a:Lada;

    .line 59
    .line 60
    const-string v1, "networkConnectionReceiver network available mqtt error"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lada;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
