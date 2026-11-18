.class public interface abstract Lteam/opay/spos/base/spi/IPosUpgrade;
.super Ljava/lang/Object;
.source "IPosUpgrade.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/IPosUpgrade$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/IPosUpgrade;",
        "Lteam/opay/KeepNoProguard;",
        "isSupportUpgrade",
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
.field public static final Companion:Lteam/opay/spos/base/spi/IPosUpgrade$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/IPosUpgrade$Companion;->a:Lteam/opay/spos/base/spi/IPosUpgrade$Companion;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/spos/base/spi/IPosUpgrade;->Companion:Lteam/opay/spos/base/spi/IPosUpgrade$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract isSupportUpgrade()Z
.end method
