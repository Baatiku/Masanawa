.class public final Lcom/opay/team/home/ntp/a;
.super Ljava/lang/Object;
.source "NTPTimeSync.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/opay/team/home/ntp/a;",
        "",
        "<init>",
        "()V",
        "",
        "d",
        "j",
        "",
        "h",
        "()Z",
        "Lteam/opay/pay/util/NetWorkReceiver;",
        "b",
        "Lteam/opay/pay/util/NetWorkReceiver;",
        "receiver",
        "",
        "c",
        "Lid8;",
        "g",
        "()I",
        "diffHours",
        "sdk_release"
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
.field public static final a:Lcom/opay/team/home/ntp/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Lteam/opay/pay/util/NetWorkReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/team/home/ntp/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/team/home/ntp/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 7
    .line 8
    new-instance v0, Lri9;

    .line 9
    .line 10
    invoke-direct {v0}, Lri9;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/opay/team/home/ntp/a;->c:Lid8;

    .line 18
    .line 19
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

.method public static synthetic a(Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/ntp/a;->i(Landroid/content/Context;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/opay/team/home/ntp/a;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/home/ntp/a;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final e()V
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/home/ntp/a;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final f()I
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/ntp/NTPTimeConfig;->Companion:Lcom/opay/team/home/ntp/NTPTimeConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/home/ntp/NTPTimeConfig$Companion;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final i(Landroid/content/Context;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/ntp/a;->b:Lteam/opay/pay/util/NetWorkReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/opay/team/home/ntp/a;->a:Lcom/opay/team/home/ntp/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/opay/team/home/ntp/a;->d()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v0, Lcom/opay/team/home/ntp/a;->b:Lteam/opay/pay/util/NetWorkReceiver;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x0

    .line 21
    sput-object p0, Lcom/opay/team/home/ntp/a;->b:Lteam/opay/pay/util/NetWorkReceiver;

    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/a;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    .line 8
    .line 9
    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lsi9;

    .line 17
    .line 18
    invoke-direct {v1}, Lsi9;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/ntp/a;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->b(Landroid/content/Context;)Lteam/opay/swarmfoundation/device/NetworkType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lteam/opay/swarmfoundation/device/NetworkType;->NONE:Lteam/opay/swarmfoundation/device/NetworkType;

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    new-instance v1, Lti9;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lti9;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lgm9;->b(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Lteam/opay/pay/util/NetWorkReceiver;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/opay/team/home/ntp/a;->b:Lteam/opay/pay/util/NetWorkReceiver;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method public final j()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/apache/commons/net/ntp/NTPUDPClient;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/apache/commons/net/ntp/NTPUDPClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/DatagramSocketClient;->t()V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x1388

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/DatagramSocketClient;->v(I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "ntp.opayweb.com"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->w(Ljava/net/InetAddress;)Lorg/apache/commons/net/ntp/TimeInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeInfo;->a()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeInfo;->b()Lxz9;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lxz9;->p()Lorg/apache/commons/net/ntp/TimeStamp;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    sub-long v6, v4, v2

    .line 45
    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    const-wide/32 v8, 0x36ee80

    .line 51
    .line 52
    .line 53
    div-long/2addr v6, v8

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v8, "checkNTPTime localTime = "

    .line 60
    .line 61
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", ntpTime = "

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, ", diffTime = "

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/a;->g()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    int-to-long v2, v0

    .line 88
    cmp-long v0, v6, v2

    .line 89
    .line 90
    if-ltz v0, :cond_0

    .line 91
    .line 92
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 93
    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v2, Landroid/content/Intent;

    .line 103
    .line 104
    const-class v3, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;

    .line 105
    .line 106
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .line 108
    .line 109
    const/high16 v3, 0x10000000

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    const-string v3, "diff_hours"

    .line 115
    .line 116
    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_3

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_1

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/commons/net/DatagramSocketClient;->close()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_1
    move-exception v1

    .line 132
    move-object v10, v1

    .line 133
    move-object v1, v0

    .line 134
    move-object v0, v10

    .line 135
    goto :goto_3

    .line 136
    :catch_1
    move-exception v1

    .line 137
    move-object v10, v1

    .line 138
    move-object v1, v0

    .line 139
    move-object v0, v10

    .line 140
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v3, "checkNTPTime e.message = "

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    if-eqz v1, :cond_1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    :goto_2
    return-void

    .line 164
    :goto_3
    if-eqz v1, :cond_2

    .line 165
    .line 166
    invoke-virtual {v1}, Lorg/apache/commons/net/DatagramSocketClient;->close()V

    .line 167
    .line 168
    .line 169
    :cond_2
    throw v0
.end method
