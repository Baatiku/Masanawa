.class public final Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "TransferToNotOpayUserHintConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0000H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "topHint",
        "",
        "getTopHint",
        "()Ljava/lang/String;",
        "bottomHint",
        "getBottomHint",
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
.field public static final Companion:Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bottomHint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topHint:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->Companion:Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig$Companion;

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
    const-string v0, "If the recipient doesn\'t complete the registration within 24 hours, the money will be automatically refunded to your account."

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->topHint:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "the recipient will receive money once they sign up for an OPay account with this number %s. "

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->bottomHint:Ljava/lang/String;

    .line 11
    .line 12
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
    const-string v1, "topHint"

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->topHint:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "bottomHint"

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->bottomHint:Ljava/lang/String;

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
    const-string v0, "aa_transfer_to_not_opay_user_guide_tips"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomHint()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->bottomHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopHint()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->topHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;->getValue()Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/transfer/TransferToNotOpayUserHintConfig;

    return-object v0
.end method
