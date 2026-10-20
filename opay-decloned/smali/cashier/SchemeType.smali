.class public final enum Lcashier/SchemeType;
.super Ljava/lang/Enum;
.source "CashierDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcashier/SchemeType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcashier/SchemeType;",
        "",
        "(Ljava/lang/String;I)V",
        "AD",
        "KYC",
        "COMPLIANCE",
        "ADD_MONEY",
        "REWARDS",
        "UNFREEZE",
        "HISTORY",
        "EASE_PAY",
        "OWEALTH",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcashier/SchemeType;

.field public static final enum AD:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AD"
    .end annotation
.end field

.field public static final enum ADD_MONEY:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ADD_MONEY"
    .end annotation
.end field

.field public static final enum COMPLIANCE:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "COMPLIANCE"
    .end annotation
.end field

.field public static final enum EASE_PAY:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EASE_PAY"
    .end annotation
.end field

.field public static final enum HISTORY:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HISTORY"
    .end annotation
.end field

.field public static final enum KYC:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KYC"
    .end annotation
.end field

.field public static final enum OWEALTH:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OWEALTH"
    .end annotation
.end field

.field public static final enum REWARDS:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REWARDS"
    .end annotation
.end field

.field public static final enum UNFREEZE:Lcashier/SchemeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNFREEZE"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcashier/SchemeType;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lcashier/SchemeType;

    .line 4
    .line 5
    sget-object v1, Lcashier/SchemeType;->AD:Lcashier/SchemeType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcashier/SchemeType;->KYC:Lcashier/SchemeType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcashier/SchemeType;->COMPLIANCE:Lcashier/SchemeType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcashier/SchemeType;->ADD_MONEY:Lcashier/SchemeType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcashier/SchemeType;->REWARDS:Lcashier/SchemeType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcashier/SchemeType;->UNFREEZE:Lcashier/SchemeType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcashier/SchemeType;->HISTORY:Lcashier/SchemeType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcashier/SchemeType;->EASE_PAY:Lcashier/SchemeType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcashier/SchemeType;->OWEALTH:Lcashier/SchemeType;

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
    new-instance v0, Lcashier/SchemeType;

    .line 2
    .line 3
    const-string v1, "AD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcashier/SchemeType;->AD:Lcashier/SchemeType;

    .line 10
    .line 11
    new-instance v0, Lcashier/SchemeType;

    .line 12
    .line 13
    const-string v1, "KYC"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcashier/SchemeType;->KYC:Lcashier/SchemeType;

    .line 20
    .line 21
    new-instance v0, Lcashier/SchemeType;

    .line 22
    .line 23
    const-string v1, "COMPLIANCE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcashier/SchemeType;->COMPLIANCE:Lcashier/SchemeType;

    .line 30
    .line 31
    new-instance v0, Lcashier/SchemeType;

    .line 32
    .line 33
    const-string v1, "ADD_MONEY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcashier/SchemeType;->ADD_MONEY:Lcashier/SchemeType;

    .line 40
    .line 41
    new-instance v0, Lcashier/SchemeType;

    .line 42
    .line 43
    const-string v1, "REWARDS"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcashier/SchemeType;->REWARDS:Lcashier/SchemeType;

    .line 50
    .line 51
    new-instance v0, Lcashier/SchemeType;

    .line 52
    .line 53
    const-string v1, "UNFREEZE"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcashier/SchemeType;->UNFREEZE:Lcashier/SchemeType;

    .line 60
    .line 61
    new-instance v0, Lcashier/SchemeType;

    .line 62
    .line 63
    const-string v1, "HISTORY"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcashier/SchemeType;->HISTORY:Lcashier/SchemeType;

    .line 70
    .line 71
    new-instance v0, Lcashier/SchemeType;

    .line 72
    .line 73
    const-string v1, "EASE_PAY"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcashier/SchemeType;->EASE_PAY:Lcashier/SchemeType;

    .line 80
    .line 81
    new-instance v0, Lcashier/SchemeType;

    .line 82
    .line 83
    const-string v1, "OWEALTH"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcashier/SchemeType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcashier/SchemeType;->OWEALTH:Lcashier/SchemeType;

    .line 91
    .line 92
    invoke-static {}, Lcashier/SchemeType;->$values()[Lcashier/SchemeType;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcashier/SchemeType;->$VALUES:[Lcashier/SchemeType;

    .line 97
    .line 98
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

.method public static valueOf(Ljava/lang/String;)Lcashier/SchemeType;
    .locals 1

    .line 1
    const-class v0, Lcashier/SchemeType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcashier/SchemeType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcashier/SchemeType;
    .locals 1

    .line 1
    sget-object v0, Lcashier/SchemeType;->$VALUES:[Lcashier/SchemeType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcashier/SchemeType;

    .line 8
    .line 9
    return-object v0
.end method
