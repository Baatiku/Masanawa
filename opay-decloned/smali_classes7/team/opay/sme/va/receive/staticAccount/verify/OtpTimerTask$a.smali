.class public final Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;
.super Landroid/os/CountDownTimer;
.source "OtpTimerTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "",
        "onTick",
        "(J)V",
        "onFinish",
        "()V",
        "sme-va_release"
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
.field public final synthetic a:Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;->a:Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;->a:Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->e()Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;->a:Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->f()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;->a:Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->e()Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;->a:Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->f()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
