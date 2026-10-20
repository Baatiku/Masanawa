.class public final Lteam/opay/spos/base/spi/DefaultFragment;
.super Lteam/opay/spos/base/spi/PosModuleFragment;
.source "PosModuleFragment.kt"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/spos/base/spi/PosModuleFragment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/spos/base/spi/DefaultFragment;",
        "Lteam/opay/spos/base/spi/PosModuleFragment;",
        "()V",
        "getFragmentTab",
        "Lteam/opay/spos/base/spi/PosFragmentTab;",
        "onLazyLoad",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/spos/base/spi/PosModuleFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFragmentTab()Lteam/opay/spos/base/spi/PosFragmentTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/base/spi/PosFragmentTab;->EMPTY:Lteam/opay/spos/base/spi/PosFragmentTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLazyLoad()V
    .locals 0

    .line 1
    return-void
.end method
