.class public final enum Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;
.super Ljava/lang/Enum;
.source "AnalyticsBackend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/analytics/AnalyticsBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Instrument"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "ACCOUNT",
        "BONUS",
        "CARD",
        "EASYCASH",
        "INVESTMENT",
        "MPESA",
        "TOKEN",
        "WALLET",
        "WALLET_BONUS",
        "OWEALTH",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum ACCOUNT:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum BONUS:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum CARD:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum EASYCASH:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum INVESTMENT:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum MPESA:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum OWEALTH:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum TOKEN:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum WALLET:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

.field public static final enum WALLET_BONUS:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->ACCOUNT:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->BONUS:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->CARD:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->EASYCASH:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->INVESTMENT:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->MPESA:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->TOKEN:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->WALLET:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->WALLET_BONUS:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->OWEALTH:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "account"

    .line 5
    .line 6
    const-string v3, "ACCOUNT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->ACCOUNT:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "bonus"

    .line 17
    .line 18
    const-string v3, "BONUS"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->BONUS:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "card"

    .line 29
    .line 30
    const-string v3, "CARD"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->CARD:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "eWithdrawal"

    .line 41
    .line 42
    const-string v3, "EASYCASH"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->EASYCASH:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "investment"

    .line 53
    .line 54
    const-string v3, "INVESTMENT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->INVESTMENT:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "mpesa"

    .line 65
    .line 66
    const-string v3, "MPESA"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->MPESA:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "token"

    .line 77
    .line 78
    const-string v3, "TOKEN"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->TOKEN:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "wallet"

    .line 89
    .line 90
    const-string v3, "WALLET"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->WALLET:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 96
    .line 97
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "wallet+bonus"

    .line 102
    .line 103
    const-string v3, "WALLET_BONUS"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->WALLET_BONUS:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 109
    .line 110
    new-instance v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "owealth"

    .line 115
    .line 116
    const-string v3, "OWEALTH"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->OWEALTH:Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 122
    .line 123
    invoke-static {}, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->$values()[Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->$VALUES:[Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 128
    .line 129
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->$ENTRIES:Lwo5;

    .line 134
    .line 135
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

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->$VALUES:[Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;

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
    iget-object v0, p0, Lteam/opay/pay/analytics/AnalyticsBackend$Instrument;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
