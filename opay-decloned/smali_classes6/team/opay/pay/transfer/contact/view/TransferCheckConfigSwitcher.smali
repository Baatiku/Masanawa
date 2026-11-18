.class public final Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "TransferCheckConfigSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0017H\u0016J\u0008\u0010%\u001a\u00020\u0000H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\u0011X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u0011X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u0017X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u0017X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u0017X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u0017X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0014\u0010 \u001a\u00020\u0017X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "aaIntervalTime",
        "",
        "getAaIntervalTime",
        "()J",
        "aaCheckAmount",
        "",
        "getAaCheckAmount",
        "()I",
        "acIntervalTime",
        "getAcIntervalTime",
        "acCheckAmount",
        "getAcCheckAmount",
        "aaShowConfirm",
        "",
        "getAaShowConfirm",
        "()Z",
        "acShowConfirm",
        "getAcShowConfirm",
        "aaConfirmDesc",
        "",
        "getAaConfirmDesc",
        "()Ljava/lang/String;",
        "acConfirmDesc",
        "getAcConfirmDesc",
        "confirmTitle",
        "getConfirmTitle",
        "confirmButton",
        "getConfirmButton",
        "cancleButton",
        "getCancleButton",
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
.field public static final Companion:Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final aaCheckAmount:I

.field private final aaConfirmDesc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final aaIntervalTime:J

.field private final aaShowConfirm:Z

.field private final acCheckAmount:I

.field private final acConfirmDesc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final acIntervalTime:J

.field private final acShowConfirm:Z

.field private final cancleButton:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final confirmButton:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final confirmTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->Companion:Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;

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
    const v0, 0x186a0

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaCheckAmount:I

    .line 8
    .line 9
    iput v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acCheckAmount:I

    .line 10
    .line 11
    const-string v0, "Double check the transfer details before you proceed. Please note that successful transfers cannot be reversed."

    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaConfirmDesc:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acConfirmDesc:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "Reminder"

    .line 18
    .line 19
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->confirmTitle:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "Continue"

    .line 22
    .line 23
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->confirmButton:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Recheck"

    .line 26
    .line 27
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->cancleButton:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 4
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
    const-string v1, "aaIntervalTime"

    .line 7
    .line 8
    iget-wide v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaIntervalTime:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "aaCheckAmount"

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaCheckAmount:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "acIntervalTime"

    .line 21
    .line 22
    iget-wide v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acIntervalTime:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "acCheckAmount"

    .line 28
    .line 29
    iget v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acCheckAmount:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "aaShowConfirm"

    .line 35
    .line 36
    iget-boolean v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaShowConfirm:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "acShowConfirm"

    .line 42
    .line 43
    iget-boolean v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acShowConfirm:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "aaConfirmDesc"

    .line 49
    .line 50
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaConfirmDesc:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "acConfirmDesc"

    .line 56
    .line 57
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acConfirmDesc:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "confirmTitle"

    .line 63
    .line 64
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->confirmTitle:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "confirmButton"

    .line 70
    .line 71
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->confirmButton:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "cancleButton"

    .line 77
    .line 78
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->cancleButton:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ng_feature_transfer_check_config_new"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAaCheckAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaCheckAmount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAaConfirmDesc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaConfirmDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAaIntervalTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaIntervalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAaShowConfirm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->aaShowConfirm:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getAcCheckAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acCheckAmount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAcConfirmDesc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acConfirmDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAcIntervalTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acIntervalTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAcShowConfirm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->acShowConfirm:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCancleButton()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->cancleButton:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfirmButton()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->confirmButton:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfirmTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->confirmTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getValue()Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;

    return-object v0
.end method
