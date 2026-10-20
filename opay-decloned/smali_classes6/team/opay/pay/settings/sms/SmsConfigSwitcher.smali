.class public final Lteam/opay/pay/settings/sms/SmsConfigSwitcher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "SmsConfigSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/settings/sms/SmsConfigSwitcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0005H\u0016J\u0008\u0010&\u001a\u00020\u0000H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\"\u0004\u0008\u001c\u0010\u0013R\u001a\u0010\u001d\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\nR\u001a\u0010 \u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0008\"\u0004\u0008\"\u0010\n\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/settings/sms/SmsConfigSwitcher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "key",
        "",
        "smsDescribe",
        "getSmsDescribe",
        "()Ljava/lang/String;",
        "setSmsDescribe",
        "(Ljava/lang/String;)V",
        "smsPrice",
        "getSmsPrice",
        "setSmsPrice",
        "smsOpen",
        "",
        "getSmsOpen",
        "()Z",
        "setSmsOpen",
        "(Z)V",
        "smsTipsUrl",
        "getSmsTipsUrl",
        "setSmsTipsUrl",
        "teamAndConditions",
        "getTeamAndConditions",
        "setTeamAndConditions",
        "showDot",
        "getShowDot",
        "setShowDot",
        "smsTips",
        "getSmsTips",
        "setSmsTips",
        "smsTipsBtn",
        "getSmsTipsBtn",
        "setSmsTipsBtn",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
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
.field public static final Companion:Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDot:Z

.field private smsDescribe:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smsOpen:Z

.field private smsPrice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smsTips:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smsTipsBtn:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private smsTipsUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private teamAndConditions:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->Companion:Lteam/opay/pay/settings/sms/SmsConfigSwitcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "feature_sms_subscribe_config"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->key:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "After successful subscription, we will send you an SMS alert"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsDescribe:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "charge of \u20a63 per alert"

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsPrice:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsOpen:Z

    .line 18
    .line 19
    const-string v1, "https://mkt.opayweb.com/proh5?code=1629060292468269058&id=145"

    .line 20
    .line 21
    iput-object v1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsUrl:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "https://mkt.opayweb.com/proh5?code=1625444603442458626&id=143"

    .line 24
    .line 25
    iput-object v1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->teamAndConditions:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->showDot:Z

    .line 28
    .line 29
    const-string v0, "Tips:\nSMS charges for the previous month will be automatically debited on the 3rd day of each new month at 10 AM.\nFree SMS alerts are available on OPay."

    .line 30
    .line 31
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTips:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Learn more>"

    .line 34
    .line 35
    iput-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsBtn:Ljava/lang/String;

    .line 36
    .line 37
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
    const-string v1, "smsDescribe"

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsDescribe:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "smsPrice"

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsPrice:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "smsOpen"

    .line 21
    .line 22
    iget-boolean v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsOpen:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "smsTipsUrl"

    .line 28
    .line 29
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "teamAndConditions"

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->teamAndConditions:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "smsTips"

    .line 42
    .line 43
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTips:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "smsTipsBtn"

    .line 49
    .line 50
    iget-object v2, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsBtn:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowDot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->showDot:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSmsDescribe()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsDescribe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSmsOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSmsPrice()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSmsTips()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTips:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSmsTipsBtn()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsBtn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSmsTipsUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTeamAndConditions()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->teamAndConditions:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->getValue()Lteam/opay/pay/settings/sms/SmsConfigSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/settings/sms/SmsConfigSwitcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;

    return-object v0
.end method

.method public final setShowDot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->showDot:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSmsDescribe(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsDescribe:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSmsOpen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsOpen:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSmsPrice(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsPrice:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSmsTips(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTips:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSmsTipsBtn(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsBtn:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSmsTipsUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->smsTipsUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTeamAndConditions(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsConfigSwitcher;->teamAndConditions:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
