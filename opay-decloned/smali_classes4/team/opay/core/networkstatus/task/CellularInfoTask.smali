.class public final Lteam/opay/core/networkstatus/task/CellularInfoTask;
.super Lteam/opay/core/networkstatus/task/INetworkDetectTask;
.source "CellularInfoTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask<",
        "Lteam/opay/core/networkstatus/result/CellularInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0096@\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/core/networkstatus/task/CellularInfoTask;",
        "Lteam/opay/core/networkstatus/task/INetworkDetectTask;",
        "Lteam/opay/core/networkstatus/result/CellularInfo;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;",
        "a",
        "(Ljr2;)Ljava/lang/Object;",
        "Landroid/telephony/TelephonyManager;",
        "telephonyManager",
        "",
        "slotIndex",
        "Lteam/opay/core/networkstatus/result/SimInfo;",
        "e",
        "(Landroid/telephony/TelephonyManager;I)Lteam/opay/core/networkstatus/result/SimInfo;",
        "f",
        "(Landroid/telephony/TelephonyManager;)Lteam/opay/core/networkstatus/result/SimInfo;",
        "",
        "b",
        "(Landroid/telephony/TelephonyManager;)Ljava/lang/String;",
        "c",
        "(Landroid/telephony/TelephonyManager;)I",
        "dbm",
        "networkType",
        "d",
        "(ILjava/lang/String;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "network-status-ping_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cellular"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/core/networkstatus/task/INetworkDetectTask;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/core/networkstatus/task/CellularInfoTask;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljr2;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse<",
            "Lteam/opay/core/networkstatus/result/CellularInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p1, Lqk8;->c:Lqk8;

    .line 2
    .line 3
    const-string v0, "CellularInfoTask -----  "

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {p1, v0, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/core/networkstatus/task/CellularInfoTask;->b:Landroid/content/Context;

    .line 11
    .line 12
    const-string v3, "android.permission.READ_PHONE_STATE"

    .line 13
    .line 14
    invoke-static {v0, v3}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "Don\'t have READ_PHONE_STATE permission"

    .line 22
    .line 23
    invoke-static {p1, v0, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 27
    .line 28
    new-instance v0, Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 29
    .line 30
    const/4 v8, 0x3

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v7, "no READ_PHONE_STATE permission"

    .line 35
    .line 36
    move-object v4, v0

    .line 37
    invoke-direct/range {v4 .. v9}, Lteam/opay/core/networkstatus/result/CellularInfo;-><init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v3, v0}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    :try_start_0
    iget-object p1, p0, Lteam/opay/core/networkstatus/task/CellularInfoTask;->b:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p1}, Lgt;->j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1, v3}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->e(Landroid/telephony/TelephonyManager;I)Lteam/opay/core/networkstatus/result/SimInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, p1, v0}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->e(Landroid/telephony/TelephonyManager;I)Lteam/opay/core/networkstatus/result/SimInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    new-instance p1, Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 60
    .line 61
    const/4 v8, 0x4

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v4, p1

    .line 65
    invoke-direct/range {v4 .. v9}, Lteam/opay/core/networkstatus/result/CellularInfo;-><init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 69
    .line 70
    invoke-direct {v1, v0, p1}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-instance v0, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;

    .line 76
    .line 77
    new-instance v1, Lteam/opay/core/networkstatus/result/CellularInfo;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x3

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    move-object v4, v1

    .line 88
    invoke-direct/range {v4 .. v9}, Lteam/opay/core/networkstatus/result/CellularInfo;-><init>(Lteam/opay/core/networkstatus/result/SimInfo;Lteam/opay/core/networkstatus/result/SimInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v3, v1}, Lteam/opay/core/networkstatus/task/NetworkDetectTaskResponse;-><init>(ZLjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public final b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0xd

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0xf

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const-string p1, "Other"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "4G"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p1, "3G"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p1, "2G"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string p1, "Unknown"

    .line 42
    .line 43
    :goto_0
    return-object p1
.end method

.method public final c(Landroid/telephony/TelephonyManager;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/networkstatus/task/CellularInfoTask;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_6

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/telephony/CellInfo;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    instance-of p1, v3, Landroid/telephony/CellInfoWcdma;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    instance-of p1, v3, Landroid/telephony/CellInfoGsm;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    instance-of p1, v3, Landroid/telephony/CellInfoLte;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    check-cast v3, Landroid/telephony/CellInfoLte;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    instance-of p1, v3, Landroid/telephony/CellInfoCdma;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v4, 0x1d

    .line 110
    .line 111
    if-lt p1, v4, :cond_6

    .line 112
    .line 113
    invoke-static {v3}, Lu62;->a(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-static {v3}, Lv62;->a(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Lw62;->a(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v3, "getCellSignalStrength(...)"

    .line 128
    .line 129
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lx62;->a(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-static {p1}, Lxm9;->a(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lgn9;->a(Landroid/telephony/CellSignalStrengthNr;)I

    .line 143
    .line 144
    .line 145
    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_6
    :goto_0
    return v1

    .line 147
    :goto_1
    sget-object v3, Lqk8;->c:Lqk8;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v5, "Failed to get signal strength: "

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {v3, p1, v2, v0, v2}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return v1

    .line 174
    :goto_2
    sget-object v3, Lqk8;->c:Lqk8;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v5, "SecurityException while getting signal strength: "

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v3, p1, v2, v0, v2}, Lteam/opay/core/common/GenericLogger;->p(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    return v1
.end method

.method public final d(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x655

    .line 6
    .line 7
    const-string v2, "VERY POOR"

    .line 8
    .line 9
    const-string v3, "POOR"

    .line 10
    .line 11
    const/16 v4, -0x6e

    .line 12
    .line 13
    const-string v5, "GOOD"

    .line 14
    .line 15
    const/16 v6, -0x64

    .line 16
    .line 17
    const-string v7, "STRONG"

    .line 18
    .line 19
    const-string v8, "EXCELLENT"

    .line 20
    .line 21
    if-eq v0, v1, :cond_6

    .line 22
    .line 23
    const/16 v1, 0x674

    .line 24
    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    .line 27
    const/16 v1, 0x693

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_0
    const-string v0, "4G"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    const/16 p2, -0x50

    .line 42
    .line 43
    if-lt p1, p2, :cond_2

    .line 44
    .line 45
    :goto_0
    move-object v2, v8

    .line 46
    goto :goto_5

    .line 47
    :cond_2
    const/16 p2, -0x5a

    .line 48
    .line 49
    if-lt p1, p2, :cond_3

    .line 50
    .line 51
    :goto_1
    move-object v2, v7

    .line 52
    goto :goto_5

    .line 53
    :cond_3
    if-lt p1, v6, :cond_4

    .line 54
    .line 55
    :goto_2
    move-object v2, v5

    .line 56
    goto :goto_5

    .line 57
    :cond_4
    if-lt p1, v4, :cond_b

    .line 58
    .line 59
    :goto_3
    move-object v2, v3

    .line 60
    goto :goto_5

    .line 61
    :cond_5
    const-string v0, "3G"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_7

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_6
    const-string v0, "2G"

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_7

    .line 77
    .line 78
    :goto_4
    const-string v2, "UNKNOWN"

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_7
    const/16 p2, -0x46

    .line 82
    .line 83
    if-lt p1, p2, :cond_8

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_8
    const/16 p2, -0x55

    .line 87
    .line 88
    if-lt p1, p2, :cond_9

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_9
    if-lt p1, v6, :cond_a

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_a
    if-lt p1, v4, :cond_b

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_b
    :goto_5
    return-object v2
.end method

.method public final e(Landroid/telephony/TelephonyManager;I)Lteam/opay/core/networkstatus/result/SimInfo;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->f(Landroid/telephony/TelephonyManager;)Lteam/opay/core/networkstatus/result/SimInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lteam/opay/core/networkstatus/task/CellularInfoTask;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lgt;->i(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lr62;->a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lt p2, v1, :cond_3

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Ls62;->a(Ljava/lang/Object;)Landroid/telephony/SubscriptionInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Lt62;->a(Landroid/telephony/SubscriptionInfo;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {p1, p2}, Lbn9;->a(Landroid/telephony/TelephonyManager;I)Landroid/telephony/TelephonyManager;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->f(Landroid/telephony/TelephonyManager;)Lteam/opay/core/networkstatus/result/SimInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_0
    return-object v2
.end method

.method public final f(Landroid/telephony/TelephonyManager;)Lteam/opay/core/networkstatus/result/SimInfo;
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_4

    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v4, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v4, v0

    .line 19
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object v1, v0

    .line 31
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    const-string v2, "substring(...)"

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v6, 0x0

    .line 39
    if-lt v0, v3, :cond_2

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-object/from16 v1, p0

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-le v7, v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    move v7, v1

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    const/4 v7, 0x0

    .line 89
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->c(Landroid/telephony/TelephonyManager;)I

    .line 90
    .line 91
    .line 92
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    move-object/from16 v1, p0

    .line 94
    .line 95
    :try_start_3
    invoke-virtual {v1, v8, v5}, Lteam/opay/core/networkstatus/task/CellularInfoTask;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    new-instance v10, Lteam/opay/core/networkstatus/result/SimInfo;

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    move-object v2, v10

    .line 103
    move v6, v0

    .line 104
    invoke-direct/range {v2 .. v9}, Lteam/opay/core/networkstatus/result/SimInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_4
    move-object/from16 v1, p0

    .line 109
    .line 110
    new-instance v0, Lteam/opay/core/networkstatus/result/SimInfo;

    .line 111
    .line 112
    const/16 v19, 0x7e

    .line 113
    .line 114
    const/16 v20, 0x0

    .line 115
    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/4 v14, 0x0

    .line 119
    const/4 v15, 0x0

    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    const/16 v17, 0x0

    .line 123
    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    move-object v11, v0

    .line 127
    invoke-direct/range {v11 .. v20}, Lteam/opay/core/networkstatus/result/SimInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :catch_1
    :goto_4
    const/4 v10, 0x0

    .line 132
    :goto_5
    return-object v10
.end method
