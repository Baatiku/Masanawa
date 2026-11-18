.class public final enum Lteam/opay/core/api/Currency;
.super Ljava/lang/Enum;
.source "Currency.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/api/Currency$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/Currency;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/core/api/Currency;",
        "",
        "code",
        "",
        "symbol",
        "country",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "getSymbol",
        "getCountry",
        "GHANA",
        "NIGERIA",
        "OTHER",
        "Companion",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/api/Currency;

.field public static final Companion:Lteam/opay/core/api/Currency$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GHANA:Lteam/opay/core/api/Currency;

.field public static final enum NIGERIA:Lteam/opay/core/api/Currency;

.field public static final enum OTHER:Lteam/opay/core/api/Currency;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final country:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final symbol:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/Currency;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/core/api/Currency;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/core/api/Currency;->GHANA:Lteam/opay/core/api/Currency;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/core/api/Currency;->NIGERIA:Lteam/opay/core/api/Currency;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/core/api/Currency;->OTHER:Lteam/opay/core/api/Currency;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lteam/opay/core/api/Currency;

    .line 2
    .line 3
    const-string v4, "\u20b5"

    .line 4
    .line 5
    const-string v5, "Ghana"

    .line 6
    .line 7
    const-string v1, "GHANA"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "GHS"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/api/Currency;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lteam/opay/core/api/Currency;->GHANA:Lteam/opay/core/api/Currency;

    .line 17
    .line 18
    new-instance v0, Lteam/opay/core/api/Currency;

    .line 19
    .line 20
    const-string v11, "\u20a6"

    .line 21
    .line 22
    const-string v12, "Nigeria"

    .line 23
    .line 24
    const-string v8, "NIGERIA"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const-string v10, "NGN"

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/api/Currency;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lteam/opay/core/api/Currency;->NIGERIA:Lteam/opay/core/api/Currency;

    .line 34
    .line 35
    new-instance v0, Lteam/opay/core/api/Currency;

    .line 36
    .line 37
    const-string v5, ""

    .line 38
    .line 39
    const-string v6, "N/A"

    .line 40
    .line 41
    const-string v2, "OTHER"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const-string v4, ""

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lteam/opay/core/api/Currency;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lteam/opay/core/api/Currency;->OTHER:Lteam/opay/core/api/Currency;

    .line 51
    .line 52
    invoke-static {}, Lteam/opay/core/api/Currency;->$values()[Lteam/opay/core/api/Currency;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lteam/opay/core/api/Currency;->$VALUES:[Lteam/opay/core/api/Currency;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lteam/opay/core/api/Currency;->$ENTRIES:Lwo5;

    .line 63
    .line 64
    new-instance v0, Lteam/opay/core/api/Currency$Companion;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1}, Lteam/opay/core/api/Currency$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lteam/opay/core/api/Currency;->Companion:Lteam/opay/core/api/Currency$Companion;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    iput-object p3, p0, Lteam/opay/core/api/Currency;->code:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lteam/opay/core/api/Currency;->symbol:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lteam/opay/core/api/Currency;->country:Ljava/lang/String;

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
            "Lteam/opay/core/api/Currency;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/Currency;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/Currency;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/Currency;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/Currency;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/Currency;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/Currency;->$VALUES:[Lteam/opay/core/api/Currency;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/Currency;

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
    iget-object v0, p0, Lteam/opay/core/api/Currency;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/Currency;->country:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/Currency;->symbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
