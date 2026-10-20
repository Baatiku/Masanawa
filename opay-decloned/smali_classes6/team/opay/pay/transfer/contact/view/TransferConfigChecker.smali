.class public final Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
.super Ljava/lang/Object;
.source "TransferConfigChecker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000cR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0018\u001a\u00020\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0015R\u0016\u0010\u001b\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0015R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u001cR\u0011\u0010 \u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "",
        "Lag8;",
        "owner",
        "",
        "fromAA",
        "<init>",
        "(Lag8;Z)V",
        "",
        "a",
        "()V",
        "d",
        "Lag8;",
        "b",
        "Z",
        "getFromAA",
        "()Z",
        "setFromAA",
        "(Z)V",
        "",
        "c",
        "J",
        "getTime",
        "()J",
        "time",
        "startTime",
        "e",
        "timeCount",
        "()Ljava/lang/Boolean;",
        "timeChecked",
        "",
        "()F",
        "countingTime",
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
.field public final a:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public final c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Lag8;Z)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->a:Lag8;

    .line 10
    .line 11
    iput-boolean p2, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->b:Z

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    sget-object p1, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->Companion:Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;->a()Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getAaIntervalTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->Companion:Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;->a()Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getAcIntervalTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    :cond_1
    :goto_0
    iput-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->c:J

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->d:J

    .line 6
    .line 7
    return-void
.end method

.method public final b()F
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->e:J

    .line 2
    .line 3
    long-to-float v0, v0

    .line 4
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    return v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->d:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->e:J

    .line 17
    .line 18
    iget-wide v2, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->c:J

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-ltz v4, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->e:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-wide v2, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->d:J

    .line 16
    .line 17
    iput-wide v2, p0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->e:J

    .line 18
    .line 19
    :cond_1
    return-void
.end method
