.class public final enum Lteam/opay/core/api/GraphQL$BusinessCategory;
.super Ljava/lang/Enum;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BusinessCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "FOOD",
        "NONE",
        "TRANSPORTATION",
        "BUS",
        "OPOS",
        "OKASH",
        "EDUCATION",
        "PAYBILL",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/api/GraphQL$BusinessCategory;

.field public static final enum BUS:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bus"
    .end annotation
.end field

.field public static final enum EDUCATION:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "education"
    .end annotation
.end field

.field public static final enum FOOD:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "food"
    .end annotation
.end field

.field public static final enum NONE:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = ""
    .end annotation
.end field

.field public static final enum OKASH:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "okash"
    .end annotation
.end field

.field public static final enum OPOS:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opos"
    .end annotation
.end field

.field public static final enum PAYBILL:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payBill"
    .end annotation
.end field

.field public static final enum TRANSPORTATION:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transportation"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->FOOD:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->NONE:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->TRANSPORTATION:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->BUS:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->OPOS:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->OKASH:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->EDUCATION:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/api/GraphQL$BusinessCategory;->PAYBILL:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    const-string v1, "FOOD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->FOOD:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 12
    .line 13
    const-string v1, "NONE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->NONE:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 22
    .line 23
    const-string v1, "TRANSPORTATION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->TRANSPORTATION:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 32
    .line 33
    const-string v1, "BUS"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->BUS:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 42
    .line 43
    const-string v1, "OPOS"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->OPOS:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 52
    .line 53
    const-string v1, "OKASH"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->OKASH:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 62
    .line 63
    const-string v1, "EDUCATION"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->EDUCATION:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 72
    .line 73
    const-string v1, "PAYBILL"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$BusinessCategory;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->PAYBILL:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 80
    .line 81
    invoke-static {}, Lteam/opay/core/api/GraphQL$BusinessCategory;->$values()[Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->$VALUES:[Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->$ENTRIES:Lwo5;

    .line 92
    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/core/api/GraphQL$BusinessCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$BusinessCategory;->$VALUES:[Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->b(Ljava/lang/Enum;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
