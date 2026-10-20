.class public final enum Lteam/opay/spos/printer/internal/OFontSize;
.super Ljava/lang/Enum;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/internal/OFontSize$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/spos/printer/internal/OFontSize;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lteam/opay/spos/printer/internal/OFontSize;",
        "",
        "value",
        "",
        "size",
        "",
        "(Ljava/lang/String;ILjava/lang/String;F)V",
        "getSize",
        "()F",
        "getValue",
        "()Ljava/lang/String;",
        "XS_SMALL",
        "SMALL",
        "MIDDLE",
        "LARGE",
        "X_LARGE",
        "XL_LARGE",
        "XX_LARGE",
        "Companion",
        "spos-printer_release"
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
.field private static final synthetic $VALUES:[Lteam/opay/spos/printer/internal/OFontSize;

.field public static final Companion:Lteam/opay/spos/printer/internal/OFontSize$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum LARGE:Lteam/opay/spos/printer/internal/OFontSize;

.field public static final enum MIDDLE:Lteam/opay/spos/printer/internal/OFontSize;

.field public static final enum SMALL:Lteam/opay/spos/printer/internal/OFontSize;

.field public static final enum XL_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

.field public static final enum XS_SMALL:Lteam/opay/spos/printer/internal/OFontSize;

.field public static final enum XX_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

.field public static final enum X_LARGE:Lteam/opay/spos/printer/internal/OFontSize;


# instance fields
.field private final size:F

.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/spos/printer/internal/OFontSize;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lteam/opay/spos/printer/internal/OFontSize;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->XS_SMALL:Lteam/opay/spos/printer/internal/OFontSize;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->SMALL:Lteam/opay/spos/printer/internal/OFontSize;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->MIDDLE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->X_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->XL_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    sget-object v1, Lteam/opay/spos/printer/internal/OFontSize;->XX_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

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
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 2
    .line 3
    const-string v1, "XS"

    .line 4
    .line 5
    const/high16 v2, 0x41900000    # 18.0f

    .line 6
    .line 7
    const-string v3, "XS_SMALL"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->XS_SMALL:Lteam/opay/spos/printer/internal/OFontSize;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 16
    .line 17
    const-string v1, "S"

    .line 18
    .line 19
    const/high16 v2, 0x41a00000    # 20.0f

    .line 20
    .line 21
    const-string v3, "SMALL"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->SMALL:Lteam/opay/spos/printer/internal/OFontSize;

    .line 28
    .line 29
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 30
    .line 31
    const-string v1, "M"

    .line 32
    .line 33
    const/high16 v2, 0x41c00000    # 24.0f

    .line 34
    .line 35
    const-string v3, "MIDDLE"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->MIDDLE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 42
    .line 43
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 44
    .line 45
    const-string v1, "L"

    .line 46
    .line 47
    const/high16 v2, 0x41d00000    # 26.0f

    .line 48
    .line 49
    const-string v3, "LARGE"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 56
    .line 57
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 58
    .line 59
    const-string v1, "X"

    .line 60
    .line 61
    const/high16 v2, 0x41e00000    # 28.0f

    .line 62
    .line 63
    const-string v3, "X_LARGE"

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->X_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 72
    .line 73
    const-string v1, "XL"

    .line 74
    .line 75
    const/high16 v2, 0x42200000    # 40.0f

    .line 76
    .line 77
    const-string v3, "XL_LARGE"

    .line 78
    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->XL_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 86
    .line 87
    const-string v1, "XXL"

    .line 88
    .line 89
    const/high16 v2, 0x42400000    # 48.0f

    .line 90
    .line 91
    const-string v3, "XX_LARGE"

    .line 92
    .line 93
    const/4 v4, 0x6

    .line 94
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/spos/printer/internal/OFontSize;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->XX_LARGE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 98
    .line 99
    invoke-static {}, Lteam/opay/spos/printer/internal/OFontSize;->$values()[Lteam/opay/spos/printer/internal/OFontSize;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->$VALUES:[Lteam/opay/spos/printer/internal/OFontSize;

    .line 104
    .line 105
    new-instance v0, Lteam/opay/spos/printer/internal/OFontSize$Companion;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/internal/OFontSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    sput-object v0, Lteam/opay/spos/printer/internal/OFontSize;->Companion:Lteam/opay/spos/printer/internal/OFontSize$Companion;

    .line 112
    .line 113
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/spos/printer/internal/OFontSize;->value:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lteam/opay/spos/printer/internal/OFontSize;->size:F

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OFontSize;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/spos/printer/internal/OFontSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/spos/printer/internal/OFontSize;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/OFontSize;->$VALUES:[Lteam/opay/spos/printer/internal/OFontSize;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/spos/printer/internal/OFontSize;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/OFontSize;->size:F

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/OFontSize;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
