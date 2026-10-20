.class public final Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;
.super Ljava/lang/Object;
.source "IPosDeviceDataGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001d\u0010\t\u001a\u0004\u0018\u00010\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;",
        "b",
        "Lid8;",
        "a",
        "()Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;",
        "iPosDataGenerator",
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
.field public static final synthetic a:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

.field public static final b:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;->a:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion$iPosDataGenerator$2;->INSTANCE:Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion$iPosDataGenerator$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;->b:Lid8;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator$Companion;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/spos/base/spi/IPosDeviceDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method
