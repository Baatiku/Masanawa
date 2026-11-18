.class public final enum Lteam/opay/core/api/Country;
.super Ljava/lang/Enum;
.source "Country.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/api/Country$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/Country;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B#\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/core/api/Country;",
        "",
        "phoneRegionalCode",
        "",
        "code",
        "",
        "uiName",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;I)V",
        "getPhoneRegionalCode",
        "()I",
        "getCode",
        "()Ljava/lang/String;",
        "getUiName",
        "KENYA",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/api/Country;

.field public static final Companion:Lteam/opay/core/api/Country$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GHANA:Lteam/opay/core/api/Country;

.field public static final enum KENYA:Lteam/opay/core/api/Country;

.field public static final enum NIGERIA:Lteam/opay/core/api/Country;

.field public static final enum OTHER:Lteam/opay/core/api/Country;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final phoneRegionalCode:I

.field private final uiName:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/Country;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lteam/opay/core/api/Country;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/core/api/Country;->KENYA:Lteam/opay/core/api/Country;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/core/api/Country;->GHANA:Lteam/opay/core/api/Country;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/core/api/Country;->OTHER:Lteam/opay/core/api/Country;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lteam/opay/core/api/Country;

    .line 2
    .line 3
    const-string v4, "KE"

    .line 4
    .line 5
    sget v5, Lteam/opay/pay/R$string;->country_kenya:I

    .line 6
    .line 7
    const-string v1, "KENYA"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0xfe

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/api/Country;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lteam/opay/core/api/Country;->KENYA:Lteam/opay/core/api/Country;

    .line 17
    .line 18
    new-instance v0, Lteam/opay/core/api/Country;

    .line 19
    .line 20
    const-string v11, "GH"

    .line 21
    .line 22
    sget v12, Lteam/opay/pay/R$string;->country_ghana:I

    .line 23
    .line 24
    const-string v8, "GHANA"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const/16 v10, 0xe9

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/api/Country;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lteam/opay/core/api/Country;->GHANA:Lteam/opay/core/api/Country;

    .line 34
    .line 35
    new-instance v0, Lteam/opay/core/api/Country;

    .line 36
    .line 37
    const-string v5, "NG"

    .line 38
    .line 39
    sget v6, Lteam/opay/pay/R$string;->country_nigeria:I

    .line 40
    .line 41
    const-string v2, "NIGERIA"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const/16 v4, 0xea

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lteam/opay/core/api/Country;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 51
    .line 52
    new-instance v0, Lteam/opay/core/api/Country;

    .line 53
    .line 54
    const-string v11, "OTHER"

    .line 55
    .line 56
    sget v12, Lteam/opay/pay/R$string;->country_other:I

    .line 57
    .line 58
    const-string v8, "OTHER"

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    const/16 v10, 0xfe

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lteam/opay/core/api/Country;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lteam/opay/core/api/Country;->OTHER:Lteam/opay/core/api/Country;

    .line 68
    .line 69
    invoke-static {}, Lteam/opay/core/api/Country;->$values()[Lteam/opay/core/api/Country;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lteam/opay/core/api/Country;->$VALUES:[Lteam/opay/core/api/Country;

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lteam/opay/core/api/Country;->$ENTRIES:Lwo5;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/core/api/Country$Companion;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-direct {v0, v1}, Lteam/opay/core/api/Country$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lteam/opay/core/api/Country;->Companion:Lteam/opay/core/api/Country$Companion;

    .line 88
    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lteam/opay/core/api/Country;->phoneRegionalCode:I

    .line 5
    .line 6
    iput-object p4, p0, Lteam/opay/core/api/Country;->code:Ljava/lang/String;

    .line 7
    .line 8
    iput p5, p0, Lteam/opay/core/api/Country;->uiName:I

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
            "Lteam/opay/core/api/Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/Country;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/Country;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/Country;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/Country;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/Country;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/Country;->$VALUES:[Lteam/opay/core/api/Country;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/Country;

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
    iget-object v0, p0, Lteam/opay/core/api/Country;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhoneRegionalCode()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/api/Country;->phoneRegionalCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUiName()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/api/Country;->uiName:I

    .line 2
    .line 3
    return v0
.end method
