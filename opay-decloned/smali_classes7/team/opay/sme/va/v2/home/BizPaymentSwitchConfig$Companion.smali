.class public final Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;
.super Ljava/lang/Object;
.source "BizPaymentSwitchConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "b",
        "()Z",
        "newBizPayment",
        "Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;",
        "a",
        "()Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;",
        "config",
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
    invoke-direct {p0}, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/common/base/OpbAbConfig;->Companion:Lteam/opay/opb/common/base/OpbAbConfig$Companion;

    .line 2
    .line 3
    const-class v0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;

    .line 4
    .line 5
    invoke-static {v0}, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;->access$getOpbAbConfig$s-1378178972(Ljava/lang/Class;)Lteam/opay/opb/common/base/OpbAbConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;

    .line 10
    .line 11
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig$Companion;->a()Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;->access$getNewBizPayment$p(Lteam/opay/sme/va/v2/home/BizPaymentSwitchConfig;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
