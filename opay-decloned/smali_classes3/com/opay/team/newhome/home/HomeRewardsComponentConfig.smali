.class public final Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "HomeRewardsComponentConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0000H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "hasComponent",
        "",
        "hasSecurity",
        "position",
        "",
        "securityPosition",
        "lookupLatestTransactionsV2",
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
.field public static final Companion:Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POSITION_DOWN_FIRST_PAYMENT:I = 0x0

.field public static final POSITION_DOWN_LAST_BANNER:I = 0x1

.field public static final SECURITY_BANNER_DOWN_KBOX:I = 0x3

.field public static final SECURITY_BANNER_UPPER_KBOX:I = 0x2

.field public static final SECURITY_PAYMENT_DOWN_KBOX:I = 0x1

.field public static final SECURITY_PAYMENT_UPPER_KBOX:I


# instance fields
.field private final hasComponent:Z

.field private final hasSecurity:Z

.field private final lookupLatestTransactionsV2:Z

.field private final position:I

.field private final securityPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->Companion:Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;

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
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->hasComponent:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->hasSecurity:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->securityPosition:I

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$getHasComponent$p(Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->hasComponent:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getHasSecurity$p(Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->hasSecurity:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getLookupLatestTransactionsV2$p(Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->lookupLatestTransactionsV2:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPosition$p(Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->position:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getSecurityPosition$p(Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->securityPosition:I

    .line 2
    .line 3
    return p0
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
    const-string v1, "hasComponent"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->hasComponent:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "hasSecurity"

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->hasSecurity:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "position"

    .line 21
    .line 22
    iget v2, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->position:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "securityPosition"

    .line 28
    .line 29
    iget v2, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->securityPosition:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "lookupLatestTransactionsV2"

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->lookupLatestTransactionsV2:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

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
    const-string v0, "ng_feature_home_rewards_component"

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->getValue()Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;

    move-result-object v0

    return-object v0
.end method
