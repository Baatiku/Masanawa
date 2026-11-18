.class public final Lteam/opay/pay/message/delegate/ForceMessageConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "ForceMessageConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/message/delegate/ForceMessageConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0000H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/message/delegate/ForceMessageConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "()V",
        "numPerData",
        "",
        "getNumPerData",
        "()I",
        "setNumPerData",
        "(I)V",
        "showTime",
        "getShowTime",
        "setShowTime",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "getValue",
        "Companion",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private numPerData:I

.field private showTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->Companion:Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;

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
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->showTime:I

    .line 6
    .line 7
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
    const-string v1, "numPerData"

    .line 7
    .line 8
    iget v2, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->numPerData:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "showTime"

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->showTime:I

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
    const-string v0, "ng_feature_force_push_message_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNumPerData()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->numPerData:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowTime()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->showTime:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/ForceMessageConfig;->getValue()Lteam/opay/pay/message/delegate/ForceMessageConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/message/delegate/ForceMessageConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/message/delegate/ForceMessageConfig;

    return-object v0
.end method

.method public final setNumPerData(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->numPerData:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->showTime:I

    .line 2
    .line 3
    return-void
.end method
