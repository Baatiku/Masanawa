.class public final Lteam/opay/pay/abtest/FeatureFCMProcessTime;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "FeatureFCMProcessTime.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/abtest/FeatureFCMProcessTime;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0000H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/abtest/FeatureFCMProcessTime;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "MIN_MESSAGE_PROCESS_TIME",
        "",
        "getMIN_MESSAGE_PROCESS_TIME",
        "()J",
        "setMIN_MESSAGE_PROCESS_TIME",
        "(J)V",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "getValue",
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
.field private MIN_MESSAGE_PROCESS_TIME:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x320

    .line 5
    .line 6
    iput-wide v0, p0, Lteam/opay/pay/abtest/FeatureFCMProcessTime;->MIN_MESSAGE_PROCESS_TIME:J

    .line 7
    .line 8
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
    const-string v1, "MIN_MESSAGE_PROCESS_TIME"

    .line 7
    .line 8
    iget-wide v2, p0, Lteam/opay/pay/abtest/FeatureFCMProcessTime;->MIN_MESSAGE_PROCESS_TIME:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "feature_fcmprocess_time"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMIN_MESSAGE_PROCESS_TIME()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/abtest/FeatureFCMProcessTime;->MIN_MESSAGE_PROCESS_TIME:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/abtest/FeatureFCMProcessTime;->getValue()Lteam/opay/pay/abtest/FeatureFCMProcessTime;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/abtest/FeatureFCMProcessTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/abtest/FeatureFCMProcessTime;

    return-object v0
.end method

.method public final setMIN_MESSAGE_PROCESS_TIME(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/abtest/FeatureFCMProcessTime;->MIN_MESSAGE_PROCESS_TIME:J

    .line 2
    .line 3
    return-void
.end method
