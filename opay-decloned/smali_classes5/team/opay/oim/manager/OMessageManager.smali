.class public final Lteam/opay/oim/manager/OMessageManager;
.super Ljava/lang/Object;
.source "OMessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/oim/manager/OMessageManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/oim/manager/OMessageManager;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/oim/manager/im/OIMController;",
        "c",
        "()Lteam/opay/oim/manager/im/OIMController;",
        "b",
        "Companion",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static a:Lteam/opay/oim/manager/OMessageManager;

.field public static final b:Lteam/opay/oim/manager/OMessageManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/oim/manager/OMessageManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/oim/manager/OMessageManager;->b:Lteam/opay/oim/manager/OMessageManager$Companion;

    .line 8
    .line 9
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

.method public static final synthetic a()Lteam/opay/oim/manager/OMessageManager;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/OMessageManager;->a:Lteam/opay/oim/manager/OMessageManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lteam/opay/oim/manager/OMessageManager;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/oim/manager/OMessageManager;->a:Lteam/opay/oim/manager/OMessageManager;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final c()Lteam/opay/oim/manager/im/OIMController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/OIMController;->e:Lteam/opay/oim/manager/im/OIMController$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/oim/manager/im/OIMController$Companion;->a()Lteam/opay/oim/manager/im/OIMController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
