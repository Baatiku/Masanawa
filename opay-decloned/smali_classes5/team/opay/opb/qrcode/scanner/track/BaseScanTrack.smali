.class public Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;
.super Ljava/lang/Object;
.source "BaseScanTrack.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JG\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u0008\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J#\u0010\u0012\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\'\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000e0\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;",
        "",
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;",
        "config",
        "<init>",
        "(Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;)V",
        "",
        "event",
        "",
        "Lkotlin/Pair;",
        "params",
        "",
        "r",
        "(Ljava/lang/String;[Lkotlin/Pair;)V",
        "",
        "q",
        "()J",
        "p",
        "j",
        "()[Lkotlin/Pair;",
        "a",
        "Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;",
        "m",
        "()Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;",
        "Landroid/content/Context;",
        "b",
        "Lid8;",
        "n",
        "()Landroid/content/Context;",
        "context",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "c",
        "o",
        "()Lkotlin/Pair;",
        "deviceInfo",
        "opay-qrcode-scanner_release"
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
.field public final a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 10
    .line 11
    new-instance p1, Lkw0;

    .line 12
    .line 13
    invoke-direct {p1}, Lkw0;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->b:Lid8;

    .line 21
    .line 22
    new-instance p1, Llw0;

    .line 23
    .line 24
    invoke-direct {p1}, Llw0;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->c:Lid8;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic h()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->k()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Lkotlin/Pair;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->l()Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final k()Landroid/content/Context;
    .locals 1

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
    return-object v0
.end method

.method public static final l()Lkotlin/Pair;
    .locals 1

    .line 1
    sget-object v0, Lk93;->a:Lk93;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk93;->g()Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final j()[Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "scanSdk"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 14
    .line 15
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "scanId"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->q()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "time"

    .line 34
    .line 35
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 40
    .line 41
    invoke-virtual {v3}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->g()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "isOldScanUrl"

    .line 50
    .line 51
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->p()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "memoryLevel"

    .line 64
    .line 65
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 70
    .line 71
    invoke-virtual {v5}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v6, "from"

    .line 76
    .line 77
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 82
    .line 83
    invoke-virtual {v6}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-string v7, "cameraType"

    .line 88
    .line 89
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    iget-object v7, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 94
    .line 95
    invoke-virtual {v7}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->f()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    const-string v8, "version"

    .line 100
    .line 101
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const/16 v8, 0x8

    .line 106
    .line 107
    new-array v8, v8, [Lkotlin/Pair;

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    aput-object v0, v8, v9

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    aput-object v1, v8, v0

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    aput-object v2, v8, v0

    .line 117
    .line 118
    const/4 v0, 0x3

    .line 119
    aput-object v3, v8, v0

    .line 120
    .line 121
    const/4 v0, 0x4

    .line 122
    aput-object v4, v8, v0

    .line 123
    .line 124
    const/4 v0, 0x5

    .line 125
    aput-object v5, v8, v0

    .line 126
    .line 127
    const/4 v0, 0x6

    .line 128
    aput-object v6, v8, v0

    .line 129
    .line 130
    const/4 v0, 0x7

    .line 131
    aput-object v7, v8, v0

    .line 132
    .line 133
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-array v1, v9, [Lkotlin/Pair;

    .line 138
    .line 139
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, [Lkotlin/Pair;

    .line 144
    .line 145
    return-object v0
.end method

.method public final m()Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final o()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/Pair;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->o()Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public final q()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->a:Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;

    .line 6
    .line 7
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/track/ScanTrackConfig;->e()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public final varargs r(Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->j()[Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p2}, Lkotlin/collections/a;->y([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, [Lkotlin/Pair;

    .line 20
    .line 21
    sget-object v0, Lere;->a:Lere;

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/track/BaseScanTrack;->n()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    array-length v2, p2

    .line 28
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, [Lkotlin/Pair;

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1, p2}, Lere;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
