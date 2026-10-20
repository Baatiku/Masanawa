.class public final Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;
.super Ljava/lang/Object;
.source "SelfTransferGuideOwealthChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\u0003R\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\tR\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;",
        "",
        "<init>",
        "()V",
        "",
        "a",
        "()Z",
        "",
        "b",
        "Z",
        "isFirstShow",
        "Lteam/opay/core/settings/NoClearStorage;",
        "Lteam/opay/core/settings/NoClearStorage;",
        "settingsStorage",
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


# instance fields
.field public a:Z

.field public final b:Lteam/opay/core/settings/NoClearStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 5
    .line 6
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 6
    .line 7
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->B0()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    if-nez v6, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 18
    .line 19
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->p()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 24
    .line 25
    invoke-virtual {v4}, Lteam/opay/core/settings/NoClearStorage;->o()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    :cond_0
    sub-long v2, v0, v2

    .line 34
    .line 35
    const/16 v4, 0x5a

    .line 36
    .line 37
    int-to-long v4, v4

    .line 38
    const-wide/32 v6, 0x5265c00

    .line 39
    .line 40
    .line 41
    mul-long v4, v4, v6

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    cmp-long v7, v2, v4

    .line 45
    .line 46
    if-lez v7, :cond_1

    .line 47
    .line 48
    iput-boolean v6, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->a:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 52
    .line 53
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->q()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sget-object v3, Lteam/opay/pay/home/tabs/ac/AcTransferToSelfOwealthSwitcher;->Companion:Lteam/opay/pay/home/tabs/ac/AcTransferToSelfOwealthSwitcher$Companion;

    .line 58
    .line 59
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/ac/AcTransferToSelfOwealthSwitcher$Companion;->c()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    if-lt v2, v4, :cond_3

    .line 65
    .line 66
    :cond_2
    const/4 v6, 0x0

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 69
    .line 70
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->C0()J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    sub-long/2addr v0, v7

    .line 75
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/ac/AcTransferToSelfOwealthSwitcher$Companion;->b()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    int-to-long v2, v2

    .line 80
    cmp-long v4, v0, v2

    .line 81
    .line 82
    if-lez v4, :cond_2

    .line 83
    .line 84
    iput-boolean v5, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->a:Z

    .line 85
    .line 86
    :goto_0
    return v6
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->k2(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->l2(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/SelfTransferGuideOwealthChecker;->b:Lteam/opay/core/settings/NoClearStorage;

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->q()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/NoClearStorage;->V0(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
