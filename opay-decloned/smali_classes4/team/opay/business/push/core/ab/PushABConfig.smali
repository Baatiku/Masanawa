.class public final Lteam/opay/business/push/core/ab/PushABConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "PushABConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/push/core/ab/PushABConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/business/push/core/ab/PushABConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0000H\u0016R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/business/push/core/ab/PushABConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "fcmTokenExpiredInterval",
        "",
        "getFcmTokenExpiredInterval",
        "()J",
        "pushMessageExpiredInterval",
        "getPushMessageExpiredInterval",
        "ttsExpiredInterval",
        "getTtsExpiredInterval",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "getValue",
        "Companion",
        "business-push-core_release"
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
.field public static final Companion:Lteam/opay/business/push/core/ab/PushABConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FCM_TOKEN_EXPIRED_INTERVAL:J = 0x3L

.field private static final PUSH_MESSAGE_EXPIRED_INTERVAL:J = 0x18L

.field private static final TTS_EXPIRED_INTERVAL:J = 0x1eL


# instance fields
.field private final fcmTokenExpiredInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcmTokenExpiredInterval"
    .end annotation
.end field

.field private final pushMessageExpiredInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pushMessageExpiredInterval"
    .end annotation
.end field

.field private final ttsExpiredInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ttsExpiredInterval"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/push/core/ab/PushABConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/push/core/ab/PushABConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/push/core/ab/PushABConfig;->Companion:Lteam/opay/business/push/core/ab/PushABConfig$Companion;

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
    const-wide/16 v0, 0x3

    .line 5
    .line 6
    iput-wide v0, p0, Lteam/opay/business/push/core/ab/PushABConfig;->fcmTokenExpiredInterval:J

    .line 7
    .line 8
    const-wide/16 v0, 0x18

    .line 9
    .line 10
    iput-wide v0, p0, Lteam/opay/business/push/core/ab/PushABConfig;->pushMessageExpiredInterval:J

    .line 11
    .line 12
    const-wide/16 v0, 0x1e

    .line 13
    .line 14
    iput-wide v0, p0, Lteam/opay/business/push/core/ab/PushABConfig;->ttsExpiredInterval:J

    .line 15
    .line 16
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
    const-string v1, "fcmTokenExpiredInterval"

    .line 7
    .line 8
    iget-wide v2, p0, Lteam/opay/business/push/core/ab/PushABConfig;->fcmTokenExpiredInterval:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "pushMessageExpiredInterval"

    .line 14
    .line 15
    iget-wide v2, p0, Lteam/opay/business/push/core/ab/PushABConfig;->pushMessageExpiredInterval:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "ttsExpiredInterval"

    .line 21
    .line 22
    iget-wide v2, p0, Lteam/opay/business/push/core/ab/PushABConfig;->ttsExpiredInterval:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opb_feature_push_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFcmTokenExpiredInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/push/core/ab/PushABConfig;->fcmTokenExpiredInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPushMessageExpiredInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/push/core/ab/PushABConfig;->pushMessageExpiredInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTtsExpiredInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/push/core/ab/PushABConfig;->ttsExpiredInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/push/core/ab/PushABConfig;->getValue()Lteam/opay/business/push/core/ab/PushABConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/business/push/core/ab/PushABConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/business/push/core/ab/PushABConfig;

    return-object v0
.end method
