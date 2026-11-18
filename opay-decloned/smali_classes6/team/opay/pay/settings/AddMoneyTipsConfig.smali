.class public final Lteam/opay/pay/settings/AddMoneyTipsConfig;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "AddMoneyTipsConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/settings/AddMoneyTipsConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0016J\u0008\u0010\u0018\u001a\u00020\u0000H\u0016J\u0011\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0008R$\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/settings/AddMoneyTipsConfig;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "tips",
        "",
        "Lteam/opay/pay/settings/AddMoneyTips;",
        "getTips",
        "()[Lteam/opay/pay/settings/AddMoneyTips;",
        "setTips",
        "([Lteam/opay/pay/settings/AddMoneyTips;)V",
        "[Lteam/opay/pay/settings/AddMoneyTips;",
        "rechargeTip",
        "",
        "getRechargeTip",
        "()Ljava/lang/String;",
        "setRechargeTip",
        "(Ljava/lang/String;)V",
        "instrumentTip",
        "getInstrumentTip",
        "setInstrumentTip",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "getValue",
        "getConfigTips",
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
.field public static final Companion:Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private instrumentTip:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rechargeTip:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tips:[Lteam/opay/pay/settings/AddMoneyTips;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->Companion:Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;

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
    const-string v0, "<font color=\"#FF9100\">To complete this transaction, you need to top up \u20a6%s. Please update the amount.</font>"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->rechargeTip:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "<font color=\"#FF9100\">The minimum amount to top up from this bank is \u20a6%s. Please update the amount.</font>"

    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->instrumentTip:Ljava/lang/String;

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
    const-string v1, "tips"

    .line 7
    .line 8
    iget-object v2, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->tips:[Lteam/opay/pay/settings/AddMoneyTips;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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
    const-string v0, "ng_feature_add_money_tips_config_v2"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfigTips()[Lteam/opay/pay/settings/AddMoneyTips;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->tips:[Lteam/opay/pay/settings/AddMoneyTips;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lteam/opay/pay/settings/AddMoneyTips;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/settings/AddMoneyTips;

    .line 9
    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    const-string v3, "For Amount above \u20a6%s, <font color=\"#00B876\">use bank transfer ></font>"

    .line 13
    .line 14
    const-string v4, "otravel://receive_money/entrance"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/settings/AddMoneyTips;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/settings/AddMoneyTips;

    .line 23
    .line 24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    const-string v3, "<font color=\"#DC0C48\">Amount must be between \u20a6%s and \u20a6%s. For amount above \u20a6%s,</font> <font color=\"#00B876\">use bank transfer ></font>"

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v4}, Lteam/opay/pay/settings/AddMoneyTips;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    :cond_0
    return-object v0
.end method

.method public final getInstrumentTip()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->instrumentTip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRechargeTip()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->rechargeTip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTips()[Lteam/opay/pay/settings/AddMoneyTips;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->tips:[Lteam/opay/pay/settings/AddMoneyTips;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/settings/AddMoneyTipsConfig;->getValue()Lteam/opay/pay/settings/AddMoneyTipsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/settings/AddMoneyTipsConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/settings/AddMoneyTipsConfig;

    return-object v0
.end method

.method public final setInstrumentTip(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->instrumentTip:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setRechargeTip(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->rechargeTip:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTips([Lteam/opay/pay/settings/AddMoneyTips;)V
    .locals 0
    .param p1    # [Lteam/opay/pay/settings/AddMoneyTips;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->tips:[Lteam/opay/pay/settings/AddMoneyTips;

    .line 2
    .line 3
    return-void
.end method
