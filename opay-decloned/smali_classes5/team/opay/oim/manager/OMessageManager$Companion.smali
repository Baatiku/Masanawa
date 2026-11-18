.class public final Lteam/opay/oim/manager/OMessageManager$Companion;
.super Ljava/lang/Object;
.source "OMessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/oim/manager/OMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048B@\u0002X\u0082\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/oim/manager/OMessageManager$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/oim/manager/OMessageManager;",
        "a",
        "()Lteam/opay/oim/manager/OMessageManager;",
        "instance",
        "Lteam/opay/oim/manager/OMessageManager;",
        "b",
        "setInstance",
        "(Lteam/opay/oim/manager/OMessageManager;)V",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lteam/opay/oim/manager/OMessageManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/oim/manager/OMessageManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/oim/manager/OMessageManager$Companion;->b()Lteam/opay/oim/manager/OMessageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->s()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public final b()Lteam/opay/oim/manager/OMessageManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/oim/manager/OMessageManager;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lteam/opay/oim/manager/OMessageManager;

    .line 8
    .line 9
    invoke-direct {v0}, Lteam/opay/oim/manager/OMessageManager;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/oim/manager/OMessageManager;->b(Lteam/opay/oim/manager/OMessageManager;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lteam/opay/oim/manager/OMessageManager;->a()Lteam/opay/oim/manager/OMessageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
