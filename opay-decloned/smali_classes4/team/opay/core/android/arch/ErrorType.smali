.class public final enum Lteam/opay/core/android/arch/ErrorType;
.super Ljava/lang/Enum;
.source "Error.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/android/arch/ErrorType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0012\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/core/android/arch/ErrorType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INCORRECT_REFERRAL",
        "INVALID_DATA",
        "LIMIT_EXCEEDED",
        "LIMIT_RECEIVER_EXCEEDED",
        "NAME_NOT_MATCH_ERROR",
        "OTHER",
        "SERVER_ERROR",
        "CLIENT_ERROR",
        "UN_FINISH_KYC1",
        "UNAUTHORIZED",
        "TOKEN_TIMEOUT",
        "UNREGISTERED_BETTING_ACCOUNT",
        "ACCOUNT_TRANSFER",
        "INVALID_PHONE",
        "INVALID_PROFILE_CODE",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/android/arch/ErrorType;

.field public static final enum ACCOUNT_TRANSFER:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum CLIENT_ERROR:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum INCORRECT_REFERRAL:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum INVALID_DATA:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum INVALID_PHONE:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum INVALID_PROFILE_CODE:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum LIMIT_RECEIVER_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum NAME_NOT_MATCH_ERROR:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum OTHER:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum SERVER_ERROR:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/android/arch/ErrorType;

.field public static final enum UN_FINISH_KYC1:Lteam/opay/core/android/arch/ErrorType;


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/android/arch/ErrorType;
    .locals 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/android/arch/ErrorType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->INCORRECT_REFERRAL:Lteam/opay/core/android/arch/ErrorType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->INVALID_DATA:Lteam/opay/core/android/arch/ErrorType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->LIMIT_RECEIVER_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->NAME_NOT_MATCH_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->OTHER:Lteam/opay/core/android/arch/ErrorType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->SERVER_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->CLIENT_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->UN_FINISH_KYC1:Lteam/opay/core/android/arch/ErrorType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/android/arch/ErrorType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->ACCOUNT_TRANSFER:Lteam/opay/core/android/arch/ErrorType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->INVALID_PHONE:Lteam/opay/core/android/arch/ErrorType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->INVALID_PROFILE_CODE:Lteam/opay/core/android/arch/ErrorType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    const-string v1, "INCORRECT_REFERRAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->INCORRECT_REFERRAL:Lteam/opay/core/android/arch/ErrorType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 12
    .line 13
    const-string v1, "INVALID_DATA"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->INVALID_DATA:Lteam/opay/core/android/arch/ErrorType;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 22
    .line 23
    const-string v1, "LIMIT_EXCEEDED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 32
    .line 33
    const-string v1, "LIMIT_RECEIVER_EXCEEDED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->LIMIT_RECEIVER_EXCEEDED:Lteam/opay/core/android/arch/ErrorType;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 42
    .line 43
    const-string v1, "NAME_NOT_MATCH_ERROR"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->NAME_NOT_MATCH_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 52
    .line 53
    const-string v1, "OTHER"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->OTHER:Lteam/opay/core/android/arch/ErrorType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 62
    .line 63
    const-string v1, "SERVER_ERROR"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->SERVER_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 72
    .line 73
    const-string v1, "CLIENT_ERROR"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->CLIENT_ERROR:Lteam/opay/core/android/arch/ErrorType;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 82
    .line 83
    const-string v1, "UN_FINISH_KYC1"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->UN_FINISH_KYC1:Lteam/opay/core/android/arch/ErrorType;

    .line 91
    .line 92
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 93
    .line 94
    const-string v1, "UNAUTHORIZED"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 102
    .line 103
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 104
    .line 105
    const-string v1, "TOKEN_TIMEOUT"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 113
    .line 114
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 115
    .line 116
    const-string v1, "UNREGISTERED_BETTING_ACCOUNT"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->UNREGISTERED_BETTING_ACCOUNT:Lteam/opay/core/android/arch/ErrorType;

    .line 124
    .line 125
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 126
    .line 127
    const-string v1, "ACCOUNT_TRANSFER"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->ACCOUNT_TRANSFER:Lteam/opay/core/android/arch/ErrorType;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 137
    .line 138
    const-string v1, "INVALID_PHONE"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->INVALID_PHONE:Lteam/opay/core/android/arch/ErrorType;

    .line 146
    .line 147
    new-instance v0, Lteam/opay/core/android/arch/ErrorType;

    .line 148
    .line 149
    const-string v1, "INVALID_PROFILE_CODE"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lteam/opay/core/android/arch/ErrorType;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->INVALID_PROFILE_CODE:Lteam/opay/core/android/arch/ErrorType;

    .line 157
    .line 158
    invoke-static {}, Lteam/opay/core/android/arch/ErrorType;->$values()[Lteam/opay/core/android/arch/ErrorType;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->$VALUES:[Lteam/opay/core/android/arch/ErrorType;

    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lteam/opay/core/android/arch/ErrorType;->$ENTRIES:Lwo5;

    .line 169
    .line 170
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
            "Lteam/opay/core/android/arch/ErrorType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ErrorType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/android/arch/ErrorType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/android/arch/ErrorType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/android/arch/ErrorType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ErrorType;->$VALUES:[Lteam/opay/core/android/arch/ErrorType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/android/arch/ErrorType;

    .line 8
    .line 9
    return-object v0
.end method
