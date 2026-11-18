.class public final Lteam/opay/pay/account/verify/VerifyWhatsappFragment$b;
.super Landroid/os/CountDownTimer;
.source "VerifyWhatsappFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/verify/VerifyWhatsappFragment;-><init>()V
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
        "team/opay/pay/account/verify/VerifyWhatsappFragment$b",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "",
        "onTick",
        "(J)V",
        "onFinish",
        "()V",
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
.field public final synthetic a:Lteam/opay/pay/account/verify/VerifyWhatsappFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyWhatsappFragment;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyWhatsappFragment$b;->a:Lteam/opay/pay/account/verify/VerifyWhatsappFragment;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyWhatsappFragment$b;->a:Lteam/opay/pay/account/verify/VerifyWhatsappFragment;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lteam/opay/pay/account/verify/VerifyWhatsappFragment;->H0(Lteam/opay/pay/account/verify/VerifyWhatsappFragment;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyWhatsappFragment$b;->a:Lteam/opay/pay/account/verify/VerifyWhatsappFragment;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lteam/opay/pay/account/verify/VerifyWhatsappFragment;->H0(Lteam/opay/pay/account/verify/VerifyWhatsappFragment;Ljava/lang/Long;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
