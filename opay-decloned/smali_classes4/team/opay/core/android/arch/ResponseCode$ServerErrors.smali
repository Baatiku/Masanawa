.class public final enum Lteam/opay/core/android/arch/ResponseCode$ServerErrors;
.super Ljava/lang/Enum;
.source "ResponseCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/android/arch/ResponseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/android/arch/ResponseCode$ServerErrors;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/core/android/arch/ResponseCode$ServerErrors;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "INTERNAL_SERVER_ERROR",
        "NOT_IMPLEMENTED",
        "BAD_GATEWAY",
        "SERVICE_UNAVAILABLE",
        "GATEWAY_TIMEOUT",
        "HTTP_VERSION_NOT_SUPPORTED",
        "VARIANT_ALSO_NEGOTIATES",
        "INSUFFICIENT_STORAGE",
        "LOOP_DETECTED",
        "BANDWIDTH_LIMIT_EXCEEDED",
        "NOT_EXTEND",
        "NETWORK_AUTHENTICATION_REQUIRED",
        "CONNECTION_TIMED_OUT",
        "PROXY_DECLINED_REQUEST",
        "TIMEOUT_OCCURRED",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum BAD_GATEWAY:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum BANDWIDTH_LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum CONNECTION_TIMED_OUT:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum GATEWAY_TIMEOUT:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum HTTP_VERSION_NOT_SUPPORTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum INSUFFICIENT_STORAGE:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum INTERNAL_SERVER_ERROR:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum LOOP_DETECTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum NETWORK_AUTHENTICATION_REQUIRED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum NOT_EXTEND:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum NOT_IMPLEMENTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum PROXY_DECLINED_REQUEST:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum SERVICE_UNAVAILABLE:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum TIMEOUT_OCCURRED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

.field public static final enum VARIANT_ALSO_NEGOTIATES:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;
    .locals 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->INTERNAL_SERVER_ERROR:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->NOT_IMPLEMENTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->BAD_GATEWAY:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->SERVICE_UNAVAILABLE:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->GATEWAY_TIMEOUT:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->HTTP_VERSION_NOT_SUPPORTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->VARIANT_ALSO_NEGOTIATES:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->INSUFFICIENT_STORAGE:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->LOOP_DETECTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->BANDWIDTH_LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->NOT_EXTEND:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->NETWORK_AUTHENTICATION_REQUIRED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->CONNECTION_TIMED_OUT:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->PROXY_DECLINED_REQUEST:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->TIMEOUT_OCCURRED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

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
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f4

    .line 5
    .line 6
    const-string v3, "INTERNAL_SERVER_ERROR"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->INTERNAL_SERVER_ERROR:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x1f5

    .line 17
    .line 18
    const-string v3, "NOT_IMPLEMENTED"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->NOT_IMPLEMENTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/16 v2, 0x1f6

    .line 29
    .line 30
    const-string v3, "BAD_GATEWAY"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->BAD_GATEWAY:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const/16 v2, 0x1f7

    .line 41
    .line 42
    const-string v3, "SERVICE_UNAVAILABLE"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->SERVICE_UNAVAILABLE:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const/16 v2, 0x1f8

    .line 53
    .line 54
    const-string v3, "GATEWAY_TIMEOUT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->GATEWAY_TIMEOUT:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const/16 v2, 0x1f9

    .line 65
    .line 66
    const-string v3, "HTTP_VERSION_NOT_SUPPORTED"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->HTTP_VERSION_NOT_SUPPORTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const/16 v2, 0x1fa

    .line 77
    .line 78
    const-string v3, "VARIANT_ALSO_NEGOTIATES"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->VARIANT_ALSO_NEGOTIATES:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const/16 v2, 0x1fb

    .line 89
    .line 90
    const-string v3, "INSUFFICIENT_STORAGE"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->INSUFFICIENT_STORAGE:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 96
    .line 97
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const/16 v2, 0x1fc

    .line 102
    .line 103
    const-string v3, "LOOP_DETECTED"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->LOOP_DETECTED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 109
    .line 110
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const/16 v2, 0x1fd

    .line 115
    .line 116
    const-string v3, "BANDWIDTH_LIMIT_EXCEEDED"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->BANDWIDTH_LIMIT_EXCEEDED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 122
    .line 123
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const/16 v2, 0x1fe

    .line 128
    .line 129
    const-string v3, "NOT_EXTEND"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->NOT_EXTEND:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const/16 v2, 0x1ff

    .line 141
    .line 142
    const-string v3, "NETWORK_AUTHENTICATION_REQUIRED"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->NETWORK_AUTHENTICATION_REQUIRED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 148
    .line 149
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const/16 v2, 0x20a

    .line 154
    .line 155
    const-string v3, "CONNECTION_TIMED_OUT"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->CONNECTION_TIMED_OUT:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 161
    .line 162
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const/16 v2, 0x20b

    .line 167
    .line 168
    const-string v3, "PROXY_DECLINED_REQUEST"

    .line 169
    .line 170
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->PROXY_DECLINED_REQUEST:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 174
    .line 175
    new-instance v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const/16 v2, 0x20c

    .line 180
    .line 181
    const-string v3, "TIMEOUT_OCCURRED"

    .line 182
    .line 183
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->TIMEOUT_OCCURRED:Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 187
    .line 188
    invoke-static {}, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->$values()[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->$VALUES:[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 193
    .line 194
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sput-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->$ENTRIES:Lwo5;

    .line 199
    .line 200
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
    iput p3, p0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->code:I

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
            "Lteam/opay/core/android/arch/ResponseCode$ServerErrors;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/android/arch/ResponseCode$ServerErrors;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->$VALUES:[Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/android/arch/ResponseCode$ServerErrors;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/arch/ResponseCode$ServerErrors;->code:I

    .line 2
    .line 3
    return v0
.end method
