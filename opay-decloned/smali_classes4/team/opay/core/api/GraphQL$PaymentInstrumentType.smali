.class public final enum Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
.super Ljava/lang/Enum;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentInstrumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/GraphQL$PaymentInstrumentType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0016j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$PaymentInstrumentType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CARD",
        "OWEALTH",
        "ACCOUNT",
        "MOBILE_MONEY",
        "COINS",
        "EXTERNAL",
        "FAC",
        "TOKEN",
        "USSD",
        "toString",
        "",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

.field public static final enum ACCOUNT:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account"
    .end annotation
.end field

.field public static final enum CARD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field public static final enum COINS:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coins"
    .end annotation
.end field

.field public static final enum EXTERNAL:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external"
    .end annotation
.end field

.field public static final enum FAC:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fac"
    .end annotation
.end field

.field public static final enum MOBILE_MONEY:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile-money"
    .end annotation
.end field

.field public static final enum OWEALTH:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owealth"
    .end annotation
.end field

.field public static final enum TOKEN:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field public static final enum USSD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ussd"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->CARD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->OWEALTH:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->ACCOUNT:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->MOBILE_MONEY:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->COINS:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->EXTERNAL:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->FAC:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->TOKEN:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->USSD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 2
    .line 3
    const-string v1, "CARD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->CARD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 12
    .line 13
    const-string v1, "OWEALTH"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->OWEALTH:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 22
    .line 23
    const-string v1, "ACCOUNT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->ACCOUNT:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 32
    .line 33
    const-string v1, "MOBILE_MONEY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->MOBILE_MONEY:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 42
    .line 43
    const-string v1, "COINS"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->COINS:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 52
    .line 53
    const-string v1, "EXTERNAL"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->EXTERNAL:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 62
    .line 63
    const-string v1, "FAC"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->FAC:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 72
    .line 73
    const-string v1, "TOKEN"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->TOKEN:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 82
    .line 83
    const-string v1, "USSD"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->USSD:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 91
    .line 92
    invoke-static {}, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->$values()[Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->$VALUES:[Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->$ENTRIES:Lwo5;

    .line 103
    .line 104
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
            "Lteam/opay/core/api/GraphQL$PaymentInstrumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->$VALUES:[Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
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
