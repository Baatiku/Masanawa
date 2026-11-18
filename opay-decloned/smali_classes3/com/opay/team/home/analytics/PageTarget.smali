.class public final enum Lcom/opay/team/home/analytics/PageTarget;
.super Ljava/lang/Enum;
.source "AnalyticsKeys.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opay/team/home/analytics/PageTarget;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/opay/team/home/analytics/PageTarget;",
        "",
        "aName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getAName",
        "()Ljava/lang/String;",
        "DEFAULT",
        "HOME",
        "FINANCE",
        "PAY",
        "REWARDS",
        "ME",
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


# static fields
.field private static final synthetic $ENTRIES:Lwo5;

.field private static final synthetic $VALUES:[Lcom/opay/team/home/analytics/PageTarget;

.field public static final enum DEFAULT:Lcom/opay/team/home/analytics/PageTarget;

.field public static final enum FINANCE:Lcom/opay/team/home/analytics/PageTarget;

.field public static final enum HOME:Lcom/opay/team/home/analytics/PageTarget;

.field public static final enum ME:Lcom/opay/team/home/analytics/PageTarget;

.field public static final enum PAY:Lcom/opay/team/home/analytics/PageTarget;

.field public static final enum REWARDS:Lcom/opay/team/home/analytics/PageTarget;


# instance fields
.field private final aName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/opay/team/home/analytics/PageTarget;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/opay/team/home/analytics/PageTarget;

    .line 3
    .line 4
    sget-object v1, Lcom/opay/team/home/analytics/PageTarget;->DEFAULT:Lcom/opay/team/home/analytics/PageTarget;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/opay/team/home/analytics/PageTarget;->HOME:Lcom/opay/team/home/analytics/PageTarget;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/opay/team/home/analytics/PageTarget;->FINANCE:Lcom/opay/team/home/analytics/PageTarget;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/opay/team/home/analytics/PageTarget;->PAY:Lcom/opay/team/home/analytics/PageTarget;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/opay/team/home/analytics/PageTarget;->REWARDS:Lcom/opay/team/home/analytics/PageTarget;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/opay/team/home/analytics/PageTarget;->ME:Lcom/opay/team/home/analytics/PageTarget;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->DEFAULT:Lcom/opay/team/home/analytics/PageTarget;

    .line 10
    .line 11
    new-instance v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "home"

    .line 15
    .line 16
    const-string v3, "HOME"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->HOME:Lcom/opay/team/home/analytics/PageTarget;

    .line 22
    .line 23
    new-instance v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    const-string v2, "finance"

    .line 27
    .line 28
    const-string v3, "FINANCE"

    .line 29
    .line 30
    invoke-direct {v0, v3, v1, v2}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->FINANCE:Lcom/opay/team/home/analytics/PageTarget;

    .line 34
    .line 35
    new-instance v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    const-string v2, "pay"

    .line 39
    .line 40
    const-string v3, "PAY"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->PAY:Lcom/opay/team/home/analytics/PageTarget;

    .line 46
    .line 47
    new-instance v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    const-string v2, "rewards"

    .line 51
    .line 52
    const-string v3, "REWARDS"

    .line 53
    .line 54
    invoke-direct {v0, v3, v1, v2}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->REWARDS:Lcom/opay/team/home/analytics/PageTarget;

    .line 58
    .line 59
    new-instance v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    const-string v2, "me"

    .line 63
    .line 64
    const-string v3, "ME"

    .line 65
    .line 66
    invoke-direct {v0, v3, v1, v2}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->ME:Lcom/opay/team/home/analytics/PageTarget;

    .line 70
    .line 71
    invoke-static {}, Lcom/opay/team/home/analytics/PageTarget;->$values()[Lcom/opay/team/home/analytics/PageTarget;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->$VALUES:[Lcom/opay/team/home/analytics/PageTarget;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/opay/team/home/analytics/PageTarget;->$ENTRIES:Lwo5;

    .line 82
    .line 83
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

    iput-object p3, p0, Lcom/opay/team/home/analytics/PageTarget;->aName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 2
    const-string p3, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/opay/team/home/analytics/PageTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lcom/opay/team/home/analytics/PageTarget;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/opay/team/home/analytics/PageTarget;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opay/team/home/analytics/PageTarget;
    .locals 1

    .line 1
    const-class v0, Lcom/opay/team/home/analytics/PageTarget;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/opay/team/home/analytics/PageTarget;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/opay/team/home/analytics/PageTarget;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/home/analytics/PageTarget;->$VALUES:[Lcom/opay/team/home/analytics/PageTarget;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/opay/team/home/analytics/PageTarget;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getAName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/analytics/PageTarget;->aName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
