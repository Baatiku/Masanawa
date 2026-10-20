.class public interface abstract Lteam/opay/spos/base/spi/IPosDeviceActionGenerator;
.super Ljava/lang/Object;
.source "IPosDeviceActionGenerator.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/IPosDeviceActionGenerator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0019\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/IPosDeviceActionGenerator;",
        "Lteam/opay/KeepNoProguard;",
        "connect",
        "",
        "type",
        "",
        "(Ljava/lang/Integer;)V",
        "disConnect",
        "isConnect",
        "",
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
.field public static final Companion:Lteam/opay/spos/base/spi/IPosDeviceActionGenerator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosDeviceActionGenerator$Companion;->a:Lteam/opay/spos/base/spi/IPosDeviceActionGenerator$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/base/spi/IPosDeviceActionGenerator;->Companion:Lteam/opay/spos/base/spi/IPosDeviceActionGenerator$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract connect(Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract disConnect()V
.end method

.method public abstract isConnect()Z
.end method
