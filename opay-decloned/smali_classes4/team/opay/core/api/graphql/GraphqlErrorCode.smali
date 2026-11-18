.class public final enum Lteam/opay/core/api/graphql/GraphqlErrorCode;
.super Ljava/lang/Enum;
.source "Api.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/graphql/GraphqlErrorCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/core/api/graphql/GraphqlErrorCode;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "NAME_NOT_MATCH",
        "UNAUTHORIZED",
        "TOKEN_TIMEOUT",
        "INCORRECT_REFERRAL",
        "DAILY_LIMIT_EXCEEDED",
        "DEPOSIT_LIMIT_EXCEEDED",
        "UNREGISTERED_BETTING_ACCOUNT",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum DAILY_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum DEPOSIT_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum INCORRECT_REFERRAL:Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum NAME_NOT_MATCH:Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum TOKEN_TIMEOUT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum UNAUTHORIZED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

.field public static final enum UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/api/graphql/GraphqlErrorCode;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/graphql/GraphqlErrorCode;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->NAME_NOT_MATCH:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNAUTHORIZED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->TOKEN_TIMEOUT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->INCORRECT_REFERRAL:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->DAILY_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->DEPOSIT_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "name_not_match"

    .line 5
    .line 6
    const-string v3, "NAME_NOT_MATCH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->NAME_NOT_MATCH:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "unauthenticated_logout"

    .line 17
    .line 18
    const-string v3, "UNAUTHORIZED"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNAUTHORIZED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "unauthenticated"

    .line 29
    .line 30
    const-string v3, "TOKEN_TIMEOUT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->TOKEN_TIMEOUT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "incorrect_referral"

    .line 41
    .line 42
    const-string v3, "INCORRECT_REFERRAL"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->INCORRECT_REFERRAL:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "daily_limit_exceeded"

    .line 53
    .line 54
    const-string v3, "DAILY_LIMIT_EXCEEDED"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->DAILY_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "deposit_limit_exceeded"

    .line 65
    .line 66
    const-string v3, "DEPOSIT_LIMIT_EXCEEDED"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->DEPOSIT_LIMIT_EXCEEDED:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "unregistered_betting_account"

    .line 77
    .line 78
    const-string v3, "UNREGISTERED_BETTING_ACCOUNT"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/GraphqlErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 84
    .line 85
    invoke-static {}, Lteam/opay/core/api/graphql/GraphqlErrorCode;->$values()[Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->$VALUES:[Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->$ENTRIES:Lwo5;

    .line 96
    .line 97
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
    iput-object p3, p0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->code:Ljava/lang/String;

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
            "Lteam/opay/core/api/graphql/GraphqlErrorCode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/graphql/GraphqlErrorCode;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/graphql/GraphqlErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->$VALUES:[Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/graphql/GraphqlErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/GraphqlErrorCode;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
