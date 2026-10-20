.class public interface abstract Lteam/opay/core/common/spi/ILogout;
.super Ljava/lang/Object;
.source "ILoginCallback.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/spi/ILogout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u0000 \u00072\u00020\u0001:\u0001\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/core/common/spi/ILogout;",
        "Lteam/opay/KeepNoProguard;",
        "Landroid/app/Activity;",
        "activity",
        "",
        "logout",
        "(Landroid/app/Activity;)V",
        "Companion",
        "a",
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


# static fields
.field public static final Companion:Lteam/opay/core/common/spi/ILogout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/ILogout$a;->a:Lteam/opay/core/common/spi/ILogout$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/core/common/spi/ILogout;->Companion:Lteam/opay/core/common/spi/ILogout$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract logout(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
