.class public final Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "TransferBIllsQueryMaxTimeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u0000H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "maxTimeInterval",
        "",
        "getMaxTimeInterval",
        "()J",
        "tips",
        "",
        "getTips",
        "()Ljava/lang/String;",
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
.field public static final Companion:Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final maxTimeInterval:J

.field private final tips:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->Companion:Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig$Companion;

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
    const-wide/16 v0, 0x16d

    .line 5
    .line 6
    iput-wide v0, p0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->maxTimeInterval:J

    .line 7
    .line 8
    const-string v0, "Timeframe should not exceed one year"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->tips:Ljava/lang/String;

    .line 11
    .line 12
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
    const-string v1, "maxTimeInterval"

    .line 7
    .line 8
    iget-wide v2, p0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->maxTimeInterval:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "tips"

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->tips:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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
    const-string v0, "feature_transaction_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxTimeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->maxTimeInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTips()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->tips:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;->getValue()Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/util/TransferBIllsQueryMaxTimeConfig;

    return-object v0
.end method
