.class public final enum Lteam/opay/core/http/arch/HttpException;
.super Ljava/lang/Enum;
.source "HttpException.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/http/arch/HttpException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/http/arch/HttpException;",
        "",
        "httpCode",
        "",
        "apiCode",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V",
        "getHttpCode",
        "()I",
        "getApiCode",
        "()Ljava/lang/String;",
        "getMessage",
        "SocketException",
        "JsonParseException",
        "InterruptedIOException",
        "UnknownHostException",
        "IOException",
        "OtherException",
        "common-http_release"
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

.field private static final synthetic $VALUES:[Lteam/opay/core/http/arch/HttpException;

.field public static final enum IOException:Lteam/opay/core/http/arch/HttpException;

.field public static final enum InterruptedIOException:Lteam/opay/core/http/arch/HttpException;

.field public static final enum JsonParseException:Lteam/opay/core/http/arch/HttpException;

.field public static final enum OtherException:Lteam/opay/core/http/arch/HttpException;

.field public static final enum SocketException:Lteam/opay/core/http/arch/HttpException;

.field public static final enum UnknownHostException:Lteam/opay/core/http/arch/HttpException;


# instance fields
.field private final apiCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpCode:I

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/http/arch/HttpException;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lteam/opay/core/http/arch/HttpException;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/core/http/arch/HttpException;->SocketException:Lteam/opay/core/http/arch/HttpException;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/core/http/arch/HttpException;->JsonParseException:Lteam/opay/core/http/arch/HttpException;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/core/http/arch/HttpException;->InterruptedIOException:Lteam/opay/core/http/arch/HttpException;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/core/http/arch/HttpException;->UnknownHostException:Lteam/opay/core/http/arch/HttpException;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/core/http/arch/HttpException;->IOException:Lteam/opay/core/http/arch/HttpException;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lteam/opay/core/http/arch/HttpException;->OtherException:Lteam/opay/core/http/arch/HttpException;

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
    .locals 13

    .line 1
    new-instance v6, Lteam/opay/core/http/arch/HttpException;

    .line 2
    .line 3
    const-string v4, "10001"

    .line 4
    .line 5
    const-string v5, "No network connection. Please check your network and try again."

    .line 6
    .line 7
    const-string v1, "SocketException"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, -0x3ec

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/http/arch/HttpException;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lteam/opay/core/http/arch/HttpException;->SocketException:Lteam/opay/core/http/arch/HttpException;

    .line 17
    .line 18
    new-instance v0, Lteam/opay/core/http/arch/HttpException;

    .line 19
    .line 20
    const-string v11, "10002"

    .line 21
    .line 22
    const-string v12, "No network connection. Please check your network and try again."

    .line 23
    .line 24
    const-string v8, "JsonParseException"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const/16 v10, 0xc8

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/http/arch/HttpException;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->JsonParseException:Lteam/opay/core/http/arch/HttpException;

    .line 34
    .line 35
    new-instance v0, Lteam/opay/core/http/arch/HttpException;

    .line 36
    .line 37
    const-string v5, "10003"

    .line 38
    .line 39
    const-string v6, "No network connection. Please check your network and try again."

    .line 40
    .line 41
    const-string v2, "InterruptedIOException"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const/16 v4, -0x3ec

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lteam/opay/core/http/arch/HttpException;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->InterruptedIOException:Lteam/opay/core/http/arch/HttpException;

    .line 51
    .line 52
    new-instance v0, Lteam/opay/core/http/arch/HttpException;

    .line 53
    .line 54
    const-string v11, "10004"

    .line 55
    .line 56
    const-string v12, "No network connection. Please check your network and try again."

    .line 57
    .line 58
    const-string v8, "UnknownHostException"

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    const/16 v10, -0x3ec

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/http/arch/HttpException;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->UnknownHostException:Lteam/opay/core/http/arch/HttpException;

    .line 68
    .line 69
    new-instance v0, Lteam/opay/core/http/arch/HttpException;

    .line 70
    .line 71
    const-string v5, "10005"

    .line 72
    .line 73
    const-string v6, "No network connection. Please check your network and try again."

    .line 74
    .line 75
    const-string v2, "IOException"

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    move-object v1, v0

    .line 79
    invoke-direct/range {v1 .. v6}, Lteam/opay/core/http/arch/HttpException;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->IOException:Lteam/opay/core/http/arch/HttpException;

    .line 83
    .line 84
    new-instance v0, Lteam/opay/core/http/arch/HttpException;

    .line 85
    .line 86
    const-string v11, "10006"

    .line 87
    .line 88
    const-string v12, "No network connection. Please check your network and try again."

    .line 89
    .line 90
    const-string v8, "OtherException"

    .line 91
    .line 92
    const/4 v9, 0x5

    .line 93
    move-object v7, v0

    .line 94
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/http/arch/HttpException;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->OtherException:Lteam/opay/core/http/arch/HttpException;

    .line 98
    .line 99
    invoke-static {}, Lteam/opay/core/http/arch/HttpException;->$values()[Lteam/opay/core/http/arch/HttpException;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->$VALUES:[Lteam/opay/core/http/arch/HttpException;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lteam/opay/core/http/arch/HttpException;->$ENTRIES:Lwo5;

    .line 110
    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lteam/opay/core/http/arch/HttpException;->httpCode:I

    .line 5
    .line 6
    iput-object p4, p0, Lteam/opay/core/http/arch/HttpException;->apiCode:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lteam/opay/core/http/arch/HttpException;->message:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/core/http/arch/HttpException;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/http/arch/HttpException;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/http/arch/HttpException;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/http/arch/HttpException;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/http/arch/HttpException;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/http/arch/HttpException;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/http/arch/HttpException;->$VALUES:[Lteam/opay/core/http/arch/HttpException;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/http/arch/HttpException;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getApiCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/HttpException;->apiCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/http/arch/HttpException;->httpCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/http/arch/HttpException;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
