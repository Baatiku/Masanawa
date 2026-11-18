.class public final enum Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;
.super Ljava/lang/Enum;
.source "ResponseCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/android/arch/ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedirectionCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "MULTIPLE_CHOICES",
        "MOVED_PERMANENTLY",
        "FOUND",
        "SEE_OTHER",
        "NOT_MODIFIED",
        "USE_PROXY",
        "SWITCH_PROXY",
        "TEMPORARY_REDIRECT",
        "PERMANENT_REDIRECT",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum FOUND:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum MOVED_PERMANENTLY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum MULTIPLE_CHOICES:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum NOT_MODIFIED:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum PERMANENT_REDIRECT:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum SEE_OTHER:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum SWITCH_PROXY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum TEMPORARY_REDIRECT:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

.field public static final enum USE_PROXY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->MULTIPLE_CHOICES:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->MOVED_PERMANENTLY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->FOUND:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->SEE_OTHER:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->NOT_MODIFIED:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->USE_PROXY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->SWITCH_PROXY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->TEMPORARY_REDIRECT:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->PERMANENT_REDIRECT:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

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
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x12c

    .line 5
    .line 6
    const-string v3, "MULTIPLE_CHOICES"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->MULTIPLE_CHOICES:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x12d

    .line 17
    .line 18
    const-string v3, "MOVED_PERMANENTLY"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->MOVED_PERMANENTLY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/16 v2, 0x12e

    .line 29
    .line 30
    const-string v3, "FOUND"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->FOUND:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const/16 v2, 0x12f

    .line 41
    .line 42
    const-string v3, "SEE_OTHER"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->SEE_OTHER:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const/16 v2, 0x130

    .line 53
    .line 54
    const-string v3, "NOT_MODIFIED"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->NOT_MODIFIED:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const/16 v2, 0x131

    .line 65
    .line 66
    const-string v3, "USE_PROXY"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->USE_PROXY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const/16 v2, 0x132

    .line 77
    .line 78
    const-string v3, "SWITCH_PROXY"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->SWITCH_PROXY:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const/16 v2, 0x133

    .line 89
    .line 90
    const-string v3, "TEMPORARY_REDIRECT"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->TEMPORARY_REDIRECT:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 96
    .line 97
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const/16 v2, 0x134

    .line 102
    .line 103
    const-string v3, "PERMANENT_REDIRECT"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->PERMANENT_REDIRECT:Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 109
    .line 110
    invoke-static {}, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->$values()[Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->$VALUES:[Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->$ENTRIES:Lwo5;

    .line 121
    .line 122
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
    iput p3, p0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->code:I

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
            "Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->$VALUES:[Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/arch/ResponseCode$RedirectionCodes;->code:I

    .line 2
    .line 3
    return v0
.end method
