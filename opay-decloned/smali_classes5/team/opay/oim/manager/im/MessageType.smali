.class public final Lteam/opay/oim/manager/im/MessageType;
.super Ljava/lang/Object;
.source "MessageType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/oim/manager/im/MessageType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/MessageType;",
        "",
        "<init>",
        "()V",
        "e",
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
.field public static a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lteam/opay/oim/manager/im/MessageType$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/oim/manager/im/MessageType$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/oim/manager/im/MessageType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/oim/manager/im/MessageType;->e:Lteam/opay/oim/manager/im/MessageType$Companion;

    .line 8
    .line 9
    const-string v0, "business"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/oim/manager/im/MessageType;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "body"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/oim/manager/im/MessageType;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "messageId"

    .line 18
    .line 19
    sput-object v0, Lteam/opay/oim/manager/im/MessageType;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "messageType"

    .line 22
    .line 23
    sput-object v0, Lteam/opay/oim/manager/im/MessageType;->d:Ljava/lang/String;

    .line 24
    .line 25
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

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/MessageType;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/MessageType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/MessageType;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/MessageType;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
