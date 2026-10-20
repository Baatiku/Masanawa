.class public final Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;
.super Ljava/lang/Object;
.source "BankAVGTimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "time",
        "",
        "accountNumber",
        "",
        "c",
        "(FLjava/lang/String;)Z",
        "d",
        "(Ljava/lang/String;)Z",
        "",
        "a",
        "()Ljava/util/List;",
        "Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;",
        "instance",
        "Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;",
        "b",
        "()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;",
        "isOpen",
        "Z",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->getBanks()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    return-object v0
.end method

.method public final b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->access$getInstance$cp()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c(FLjava/lang/String;)Z
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "accountNumber"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->access$isOpen$cp()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->getAvgTime()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    .line 27
    :goto_0
    cmpl-float p1, p1, v0

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->d(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_2
    return v1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "accountNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->access$isOpen$cp()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 15
    .line 16
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->L0(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long v4, v2, v4

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v6, p1}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->getLatestTime(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    invoke-virtual {v8}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->getDays()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v8, 0x7

    .line 58
    :goto_1
    const v9, 0x5265c00

    .line 59
    .line 60
    .line 61
    mul-int v8, v8, v9

    .line 62
    .line 63
    int-to-long v10, v8

    .line 64
    const/4 v8, 0x1

    .line 65
    cmp-long v12, v4, v10

    .line 66
    .line 67
    if-lez v12, :cond_3

    .line 68
    .line 69
    sget-object p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 76
    .line 77
    .line 78
    return v8

    .line 79
    :cond_3
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->J0(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->getCount()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 v0, 0x0

    .line 95
    :goto_2
    if-ge p1, v0, :cond_7

    .line 96
    .line 97
    sub-long/2addr v2, v6

    .line 98
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->getTimePeriod()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    const/4 p1, 0x0

    .line 110
    :goto_3
    mul-int/lit16 p1, p1, 0x3e8

    .line 111
    .line 112
    int-to-long v4, p1

    .line 113
    cmp-long p1, v2, v4

    .line 114
    .line 115
    if-gez p1, :cond_6

    .line 116
    .line 117
    return v8

    .line 118
    :cond_6
    int-to-long v4, v9

    .line 119
    cmp-long p1, v2, v4

    .line 120
    .line 121
    if-lez p1, :cond_7

    .line 122
    .line 123
    sget-object p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 124
    .line 125
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 130
    .line 131
    .line 132
    return v8

    .line 133
    :cond_7
    return v1
.end method
