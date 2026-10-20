.class public final Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;
.super Ljava/lang/Object;
.source "OtpTimerTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0008\u0007*\u0001\u0018\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003R6\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;",
        "",
        "<init>",
        "()V",
        "",
        "countdown",
        "",
        "h",
        "(Ljava/lang/Long;)V",
        "b",
        "Lkotlin/Function2;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "e",
        "()Lkotlin/jvm/functions/Function2;",
        "g",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onOtpCallback",
        "J",
        "f",
        "()J",
        "setOtpResendTime",
        "(J)V",
        "otpResendTime",
        "team/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a",
        "c",
        "Lid8;",
        "d",
        "()Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;",
        "countDownTimer",
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
.field public a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:J

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    sget-object v1, Ldr6;->b:Ldr6;

    .line 7
    .line 8
    const-wide/16 v2, 0x78

    .line 9
    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "business-register-otp-resend-time"

    .line 15
    .line 16
    invoke-virtual {v1, v3, v2}, Lteam/opay/core/common/spi/IModuleConfig;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->b:J

    .line 31
    .line 32
    new-instance v0, Lt2b;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lt2b;-><init>(Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->c:Lid8;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;)Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->c(Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;)Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;)Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;
    .locals 3

    .line 1
    iget-wide v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->b:J

    .line 2
    .line 3
    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;

    .line 4
    .line 5
    invoke-direct {v2, p0, v0, v1}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;-><init>(Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;J)V

    .line 6
    .line 7
    .line 8
    return-object v2
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->a:Lkotlin/jvm/functions/Function2;

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->d()Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d()Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Ljava/lang/Long;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->b:J

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask;->d()Lteam/opay/sme/va/receive/staticAccount/verify/OtpTimerTask$a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 20
    .line 21
    .line 22
    return-void
.end method
