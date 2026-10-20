.class public abstract Lteam/opay/core/common/spi/IModuleFragment;
.super Lteam/opay/core/common/base/BaseLazyFragment;
.source "IModuleFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/spi/IModuleFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\'\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/core/common/spi/IModuleFragment;",
        "Lteam/opay/core/common/base/BaseLazyFragment;",
        "<init>",
        "()V",
        "layoutId",
        "",
        "(I)V",
        "getFragmentTab",
        "Lteam/opay/core/common/spi/FragmentTab;",
        "Companion",
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
.field public static final Companion:Lteam/opay/core/common/spi/IModuleFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/spi/IModuleFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/spi/IModuleFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/spi/IModuleFragment;->Companion:Lteam/opay/core/common/spi/IModuleFragment$Companion;

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
.method public abstract getFragmentTab()Lteam/opay/core/common/spi/FragmentTab;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
