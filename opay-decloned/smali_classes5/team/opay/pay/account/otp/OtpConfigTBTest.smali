.class public final Lteam/opay/pay/account/otp/OtpConfigTBTest;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "OtpConfigTBTest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/account/otp/OtpConfigTBTest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0000H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007\"\u0004\u0008\u0014\u0010\tR\u001a\u0010\u0015\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0007\"\u0004\u0008\u0017\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/account/otp/OtpConfigTBTest;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "interval",
        "",
        "getInterval",
        "()I",
        "setInterval",
        "(I)V",
        "showOtherDelay",
        "getShowOtherDelay",
        "setShowOtherDelay",
        "isOpen",
        "",
        "()Z",
        "setOpen",
        "(Z)V",
        "reSentTime",
        "getReSentTime",
        "setReSentTime",
        "returnBoundary",
        "getReturnBoundary",
        "setReturnBoundary",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "getValue",
        "Companion",
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
.field public static final Companion:Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_RESEND_TIME:I = 0x3c

.field public static final DEFAULT_RETURN_BOUNDARY:I = 0xf


# instance fields
.field private interval:I

.field private isOpen:Z

.field private reSentTime:I

.field private returnBoundary:I

.field private showOtherDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->Companion:Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->interval:I

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    iput v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->showOtherDelay:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->isOpen:Z

    .line 13
    .line 14
    const/16 v0, 0x3c

    .line 15
    .line 16
    iput v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->reSentTime:I

    .line 17
    .line 18
    const/16 v0, 0xf

    .line 19
    .line 20
    iput v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->returnBoundary:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "interval"

    .line 7
    .line 8
    iget v2, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->interval:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "showOtherDelay"

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->showOtherDelay:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "isOpen"

    .line 21
    .line 22
    iget-boolean v2, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->isOpen:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "reSentTime"

    .line 28
    .line 29
    iget v2, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->reSentTime:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "returnBoundary"

    .line 35
    .line 36
    iget v2, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->returnBoundary:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "feature_ussd_otp_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->interval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReSentTime()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->reSentTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReturnBoundary()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->returnBoundary:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowOtherDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->showOtherDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OtpConfigTBTest;->getValue()Lteam/opay/pay/account/otp/OtpConfigTBTest;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/account/otp/OtpConfigTBTest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/account/otp/OtpConfigTBTest;

    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->isOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->interval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->isOpen:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setReSentTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->reSentTime:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReturnBoundary(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->returnBoundary:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowOtherDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->showOtherDelay:I

    .line 2
    .line 3
    return-void
.end method
