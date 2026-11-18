.class public final enum Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;
.super Ljava/lang/Enum;
.source "ResponseCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/android/arch/ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuccessCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "OK",
        "CREATED",
        "ACCEPTED",
        "NON_AUTHORITATIVE_INFORMATION",
        "NO_CONTENT",
        "RESET_CONTENT",
        "PARTIAL_CONTENT",
        "MULTI_STATUS",
        "ALREADY_REPORTED",
        "IM_USED",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum ACCEPTED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum ALREADY_REPORTED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum CREATED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum IM_USED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum MULTI_STATUS:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum NON_AUTHORITATIVE_INFORMATION:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum NO_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum OK:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum PARTIAL_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

.field public static final enum RESET_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->OK:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->CREATED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->ACCEPTED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->NON_AUTHORITATIVE_INFORMATION:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->NO_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->RESET_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->PARTIAL_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->MULTI_STATUS:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->ALREADY_REPORTED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->IM_USED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

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
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xc8

    .line 5
    .line 6
    const-string v3, "OK"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->OK:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0xc9

    .line 17
    .line 18
    const-string v3, "CREATED"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->CREATED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/16 v2, 0xca

    .line 29
    .line 30
    const-string v3, "ACCEPTED"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->ACCEPTED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const/16 v2, 0xcb

    .line 41
    .line 42
    const-string v3, "NON_AUTHORITATIVE_INFORMATION"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->NON_AUTHORITATIVE_INFORMATION:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const/16 v2, 0xcc

    .line 53
    .line 54
    const-string v3, "NO_CONTENT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->NO_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const/16 v2, 0xcd

    .line 65
    .line 66
    const-string v3, "RESET_CONTENT"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->RESET_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const/16 v2, 0xce

    .line 77
    .line 78
    const-string v3, "PARTIAL_CONTENT"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->PARTIAL_CONTENT:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const/16 v2, 0xcf

    .line 89
    .line 90
    const-string v3, "MULTI_STATUS"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->MULTI_STATUS:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 96
    .line 97
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const/16 v2, 0xd0

    .line 102
    .line 103
    const-string v3, "ALREADY_REPORTED"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->ALREADY_REPORTED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 109
    .line 110
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const/16 v2, 0xe2

    .line 115
    .line 116
    const-string v3, "IM_USED"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->IM_USED:Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 122
    .line 123
    invoke-static {}, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->$values()[Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->$VALUES:[Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 128
    .line 129
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->$ENTRIES:Lwo5;

    .line 134
    .line 135
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->code:I

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
            "Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->$VALUES:[Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/arch/ResponseCode$SuccessCodes;->code:I

    .line 2
    .line 3
    return v0
.end method
