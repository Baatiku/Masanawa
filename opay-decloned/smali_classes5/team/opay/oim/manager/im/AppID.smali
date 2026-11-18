.class public final enum Lteam/opay/oim/manager/im/AppID;
.super Ljava/lang/Enum;
.source "AppID.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/oim/manager/im/AppID;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/oim/manager/im/AppID;",
        "",
        "appName",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getAppName",
        "()Ljava/lang/String;",
        "OPAY_ANDROID",
        "OPOS_ANDROID",
        "oim_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lteam/opay/oim/manager/im/AppID;

.field public static final enum OPAY_ANDROID:Lteam/opay/oim/manager/im/AppID;

.field public static final enum OPOS_ANDROID:Lteam/opay/oim/manager/im/AppID;


# instance fields
.field private final appName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lteam/opay/oim/manager/im/AppID;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "opay_android"

    .line 5
    .line 6
    const-string v3, "OPAY_ANDROID"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/oim/manager/im/AppID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/oim/manager/im/AppID;->OPAY_ANDROID:Lteam/opay/oim/manager/im/AppID;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/oim/manager/im/AppID;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "opos_android"

    .line 17
    .line 18
    const-string v5, "OPOS_ANDROID"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lteam/opay/oim/manager/im/AppID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lteam/opay/oim/manager/im/AppID;->OPOS_ANDROID:Lteam/opay/oim/manager/im/AppID;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v4, v4, [Lteam/opay/oim/manager/im/AppID;

    .line 27
    .line 28
    aput-object v0, v4, v1

    .line 29
    .line 30
    aput-object v2, v4, v3

    .line 31
    .line 32
    sput-object v4, Lteam/opay/oim/manager/im/AppID;->$VALUES:[Lteam/opay/oim/manager/im/AppID;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lteam/opay/oim/manager/im/AppID;->appName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 2
    const-string p3, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/oim/manager/im/AppID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/oim/manager/im/AppID;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/oim/manager/im/AppID;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/oim/manager/im/AppID;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/oim/manager/im/AppID;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/oim/manager/im/AppID;->$VALUES:[Lteam/opay/oim/manager/im/AppID;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lteam/opay/oim/manager/im/AppID;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/oim/manager/im/AppID;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/oim/manager/im/AppID;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
