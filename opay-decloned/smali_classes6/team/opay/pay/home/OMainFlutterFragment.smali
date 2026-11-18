.class public Lteam/opay/pay/home/OMainFlutterFragment;
.super Lteam/opay/pay/home/tabs/BaseFragment;
.source "OMainFlutterFragment.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/home/OMainFlutterFragment;",
        "Lteam/opay/pay/home/tabs/BaseFragment;",
        "Lteam/opay/KeepNoProguard;",
        "<init>",
        "()V",
        "getService",
        "Lteam/opay/pay/home/MainActivity$Tab;",
        "getHostFragment",
        "Landroidx/fragment/app/Fragment;",
        "sdk_release"
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
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getHostFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/home/OMainFlutterFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/OMainFlutterFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getService()Lteam/opay/pay/home/MainActivity$Tab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 2
    .line 3
    return-object v0
.end method
