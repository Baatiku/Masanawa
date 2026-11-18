.class public interface abstract Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;
.super Ljava/lang/Object;
.source "IPosDeviceDataGenerator.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;",
        "Lteam/opay/KeepNoProguard;",
        "deviceSn",
        "",
        "firmwareVersion",
        "posDeviceName",
        "simICCID",
        "simIMSI",
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
.field public static final Companion:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;->a:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;->Companion:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract deviceSn()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract firmwareVersion()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract posDeviceName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract simICCID()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract simIMSI()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
