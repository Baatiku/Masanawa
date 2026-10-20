.class public final Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;
.super Lteam/opay/opb/common/base/OpbAbConfig;
.source "BizPaymentSwitchConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/opb/common/base/OpbAbConfig<",
        "Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0004\u001a\u00020\u00058\u0002X\u0083D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;",
        "Lteam/opay/opb/common/base/OpbAbConfig;",
        "<init>",
        "()V",
        "newBizPayment",
        "",
        "featureName",
        "",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "Companion",
        "sme-va_release"
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
.field public static final Companion:Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final newBizPayment:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newBizPayment"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;->Companion:Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/common/base/OpbAbConfig;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getNewBizPayment$p(Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;->newBizPayment:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getOpbAbConfig$s-1378178972(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/common/base/OpbAbConfig;->getOpbAbConfig(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
    const-string v1, "newBizPayment"

    .line 7
    .line 8
    iget-boolean v2, p0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;->newBizPayment:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

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
    const-string v0, "opb_feature_biz_payment_config"

    .line 2
    .line 3
    return-object v0
.end method
