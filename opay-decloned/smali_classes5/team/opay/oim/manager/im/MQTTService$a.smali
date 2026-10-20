.class public final Lteam/opay/oim/manager/im/MQTTService$a;
.super Ljava/lang/Object;
.source "MQTTService.kt"

# interfaces
.implements Lp97;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\t\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/oim/manager/im/MQTTService$a",
        "Lp97;",
        "Lt97;",
        "asyncActionToken",
        "",
        "a",
        "(Lt97;)V",
        "",
        "exception",
        "b",
        "(Lt97;Ljava/lang/Throwable;)V",
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

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lt97;)V
    .locals 3
    .param p1    # Lt97;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lada;->a:Lada;

    .line 2
    .line 3
    const-string v0, "mqttActionListener onSuccess"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lada;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/OIMController;->e()Lteam/opay/oim/manager/im/ConnectOptions;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/oim/manager/im/ConnectOptions;->d()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Lteam/opay/oim/manager/im/MQTTService;->b()Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-virtual {v1, v0, v2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->y(Ljava/lang/String;I)Lt97;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object p1, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager$Companion;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lteam/opay/oim/manager/OMessageManager;->c()Lteam/opay/oim/manager/im/OIMController;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lteam/opay/oim/manager/im/OIMController;->d(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public b(Lt97;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lt97;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lada;->a:Lada;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "mqttActionListener onFailure"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lada;->a(Ljava/lang/String;)V

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
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Lteam/opay/oim/manager/im/OIMController;->d(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
