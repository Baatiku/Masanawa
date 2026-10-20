.class public final Lteam/opay/pay/history/download/IndexDownloadTimeConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "IndexDownloadTimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/history/download/IndexDownloadTimeConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u000bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0000H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000bX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000bX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000bX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000bX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\rR\u0014\u0010\u0014\u001a\u00020\u0015X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0015X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/history/download/IndexDownloadTimeConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "rangDay",
        "",
        "getRangDay",
        "()I",
        "requestMonth",
        "getRequestMonth",
        "requestFinishText",
        "",
        "getRequestFinishText",
        "()Ljava/lang/String;",
        "acRequestFinishText",
        "getAcRequestFinishText",
        "acEmptyText",
        "getAcEmptyText",
        "successText",
        "getSuccessText",
        "isAcRecordsOpen",
        "",
        "()Z",
        "acRequestOneYear",
        "getAcRequestOneYear",
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
.field public static final Companion:Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MONTH:I = 0xc

.field private static final DEFAULT_RANG:I = 0x3c


# instance fields
.field private final acEmptyText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final acRequestFinishText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final acRequestOneYear:Z

.field private final isAcRecordsOpen:Z

.field private final rangDay:I

.field private final requestFinishText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestMonth:I

.field private final successText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->Companion:Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;

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
    const/16 v0, 0x3c

    .line 5
    .line 6
    iput v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->rangDay:I

    .line 7
    .line 8
    const/16 v0, 0xc

    .line 9
    .line 10
    iput v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->requestMonth:I

    .line 11
    .line 12
    const-string v0, "Only transactions made within the past 1 year are displayed"

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->requestFinishText:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "Only transactions made within the past 3 month are displayed"

    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acRequestFinishText:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "No record in past 3 month"

    .line 21
    .line 22
    iput-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acEmptyText:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "Your account statement will be sent to your email within 2 hours."

    .line 25
    .line 26
    iput-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->successText:Ljava/lang/String;

    .line 27
    .line 28
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
    const-string v1, "rangDay"

    .line 7
    .line 8
    iget v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->rangDay:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "requestMonth"

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->requestMonth:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "requestFinishText"

    .line 21
    .line 22
    iget-object v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->requestFinishText:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "successText"

    .line 28
    .line 29
    iget-object v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->successText:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "acRequestFinishText"

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acRequestFinishText:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "acEmptyText"

    .line 42
    .line 43
    iget-object v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acEmptyText:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "acRequestOneYear"

    .line 49
    .line 50
    iget-boolean v2, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acRequestOneYear:Z

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

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
    const-string v0, "feature_bill_download_rang_day_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAcEmptyText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acEmptyText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAcRequestFinishText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acRequestFinishText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAcRequestOneYear()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->acRequestOneYear:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRangDay()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->rangDay:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRequestFinishText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->requestFinishText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->requestMonth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSuccessText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->successText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->getValue()Lteam/opay/pay/history/download/IndexDownloadTimeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/history/download/IndexDownloadTimeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;

    return-object v0
.end method

.method public final isAcRecordsOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->isAcRecordsOpen:Z

    .line 2
    .line 3
    return v0
.end method
