.class public final Lteam/opay/pay/pin/LoginUnfreeConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "LoginUnfreeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/pin/LoginUnfreeConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0000H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/pin/LoginUnfreeConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "rateTimeByDay",
        "",
        "getRateTimeByDay",
        "()J",
        "setRateTimeByDay",
        "(J)V",
        "maxCallCount",
        "",
        "getMaxCallCount",
        "()I",
        "setMaxCallCount",
        "(I)V",
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
.field public static final Companion:Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MAX_CALL_COUNT:I = 0x1

.field public static final DEFAULT_RATE_TIME_BY_DAY:J = 0x3L


# instance fields
.field private maxCallCount:I

.field private rateTimeByDay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/pin/LoginUnfreeConfig;->Companion:Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;

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
    iput-wide v0, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->rateTimeByDay:J

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->maxCallCount:I

    .line 10
    .line 11
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
    const-string v1, "rateTimeByDay"

    .line 7
    .line 8
    iget-wide v2, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->rateTimeByDay:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "maxCallCount"

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->maxCallCount:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ng_login_unfree_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxCallCount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->maxCallCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRateTimeByDay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->rateTimeByDay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/LoginUnfreeConfig;->getValue()Lteam/opay/pay/pin/LoginUnfreeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/pin/LoginUnfreeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/pin/LoginUnfreeConfig;

    return-object v0
.end method

.method public final setMaxCallCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->maxCallCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRateTimeByDay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/pin/LoginUnfreeConfig;->rateTimeByDay:J

    .line 2
    .line 3
    return-void
.end method
