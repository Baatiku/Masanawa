.class public interface abstract Lteam/opay/core/common/spi/IPosDevice;
.super Ljava/lang/Object;
.source "IPosDevice.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/spi/IPosDevice$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008g\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dJ\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\'\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\'\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\nH\'\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\'\u00a2\u0006\u0004\u0008\r\u0010\u000cJ+\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000ej\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n`\u000fH\'\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J%\u0010\u001a\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00172\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/core/common/spi/IPosDevice;",
        "",
        "Landroid/content/Context;",
        "base",
        "attachBaseContext",
        "(Landroid/content/Context;)Landroid/content/Context;",
        "",
        "isDevicePos",
        "()Z",
        "isSmallScreen",
        "",
        "deviceSn",
        "()Ljava/lang/String;",
        "posDeviceName",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "posExtendMap",
        "()Ljava/util/HashMap;",
        "orderNo",
        "orderStatus",
        "printReceiptTicket",
        "isOrderPrinted",
        "(Ljava/lang/String;Ljava/lang/String;Z)Z",
        "T",
        "key",
        "defValue",
        "getValue",
        "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;",
        "Companion",
        "a",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/core/common/spi/IPosDevice$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/IPosDevice$a;->a:Lteam/opay/core/common/spi/IPosDevice$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/core/common/spi/IPosDevice;->Companion:Lteam/opay/core/common/spi/IPosDevice$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deviceSn()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract isDevicePos()Z
.end method

.method public abstract isOrderPrinted(Ljava/lang/String;Ljava/lang/String;Z)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isSmallScreen()Z
.end method

.method public abstract posDeviceName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract posExtendMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
