.class public final Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "StampDutyConfigSwicher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0000H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "tipsDto",
        "Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;",
        "getTipsDto",
        "()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;",
        "confirmDto",
        "Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;",
        "getConfirmDto",
        "()Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;",
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
.field public static final Companion:Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final confirmDto:Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tipsDto:Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->Companion:Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 1
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
    return-object v0
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "feature_stamp_duty_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfirmDto()Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->confirmDto:Lteam/opay/pay/home/tabs/ac/StampDutyCofirmDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTipsDto()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->tipsDto:Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->getValue()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    return-object v0
.end method
