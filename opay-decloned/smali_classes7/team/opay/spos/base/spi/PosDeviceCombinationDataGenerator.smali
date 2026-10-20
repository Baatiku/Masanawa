.class public interface abstract Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator;
.super Ljava/lang/Object;
.source "PosDeviceCombinationDataGenerator.kt"

# interfaces
.implements Lteam/opay/spos/base/spi/IPosDeviceActionGenerator;
.implements Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;
.implements Lteam/opay/spos/base/spi/IPosDeviceSystemConfigDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00042\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator;",
        "Lteam/opay/spos/base/spi/IPosDeviceActionGenerator;",
        "Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;",
        "Lteam/opay/spos/base/spi/IPosDeviceSystemConfigDelegate;",
        "Companion",
        "spos-common-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator$Companion;->a:Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator;->Companion:Lteam/opay/spos/base/spi/PosDeviceCombinationDataGenerator$Companion;

    .line 4
    .line 5
    return-void
.end method
