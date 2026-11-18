.class public abstract Lteam/opay/spos/base/spi/PosModuleFragment;
.super Lteam/opay/core/common/base/BaseLazyFragment;
.source "PosModuleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/spi/PosModuleFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0011\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/PosModuleFragment;",
        "Lteam/opay/core/common/base/BaseLazyFragment;",
        "()V",
        "layoutId",
        "",
        "(I)V",
        "getFragmentTab",
        "Lteam/opay/spos/base/spi/PosFragmentTab;",
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

.annotation build Lteam/opay/core/annotation/Keep;
.end annotation


# static fields
.field public static final Companion:Lteam/opay/spos/base/spi/PosModuleFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/spos/base/spi/PosModuleFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/spos/base/spi/PosModuleFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/spos/base/spi/PosModuleFragment;->Companion:Lteam/opay/spos/base/spi/PosModuleFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseLazyFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lteam/opay/core/common/base/BaseLazyFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract getFragmentTab()Lteam/opay/spos/base/spi/PosFragmentTab;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
