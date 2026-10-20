.class public final Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher$Companion;
.super Ljava/lang/Object;
.source "KycUpgradeByBankInfoSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;",
        "a",
        "()Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v1, Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABSwitcher(Ljava/lang/Class;)Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;->getValue()Lteam/opay/pay/kyc/KycUpgradeByBankInfoSwitcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0
.end method
