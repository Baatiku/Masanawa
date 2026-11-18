.class public final Lteam/opay/core/common/spi/DefaultFragment;
.super Lteam/opay/core/common/spi/IModuleFragment;
.source "IModuleFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/core/common/spi/DefaultFragment;",
        "Lteam/opay/core/common/spi/IModuleFragment;",
        "<init>",
        "()V",
        "getFragmentTab",
        "Lteam/opay/core/common/spi/FragmentTab;",
        "onLazyLoad",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/spi/IModuleFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFragmentTab()Lteam/opay/core/common/spi/FragmentTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/FragmentTab;->EMPTY:Lteam/opay/core/common/spi/FragmentTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLazyLoad()V
    .locals 0

    .line 1
    return-void
.end method
