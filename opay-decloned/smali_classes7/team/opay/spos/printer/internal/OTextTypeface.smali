.class public final enum Lteam/opay/spos/printer/internal/OTextTypeface;
.super Ljava/lang/Enum;
.source "Fonts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/internal/OTextTypeface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "",
        "value",
        "",
        "typeface",
        "",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getTypeface",
        "()I",
        "getValue",
        "()Ljava/lang/String;",
        "NORMAL",
        "BOLD",
        "ALL_BOLD",
        "ITALIC",
        "BOLD_ITALIC",
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
.field private static final synthetic $VALUES:[Lteam/opay/spos/printer/internal/OTextTypeface;

.field public static final enum ALL_BOLD:Lteam/opay/spos/printer/internal/OTextTypeface;

.field public static final enum BOLD:Lteam/opay/spos/printer/internal/OTextTypeface;

.field public static final enum BOLD_ITALIC:Lteam/opay/spos/printer/internal/OTextTypeface;

.field public static final Companion:Lteam/opay/spos/printer/internal/OTextTypeface$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum ITALIC:Lteam/opay/spos/printer/internal/OTextTypeface;

.field public static final enum NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;


# instance fields
.field private final typeface:I

.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/spos/printer/internal/OTextTypeface;->BOLD:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/spos/printer/internal/OTextTypeface;->ALL_BOLD:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/spos/printer/internal/OTextTypeface;->ITALIC:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/spos/printer/internal/OTextTypeface;->BOLD_ITALIC:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "N"

    .line 5
    .line 6
    const-string v3, "NORMAL"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2, v1}, Lteam/opay/spos/printer/internal/OTextTypeface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 14
    .line 15
    const-string v1, "B"

    .line 16
    .line 17
    const-string v2, "BOLD"

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v0, v2, v3, v1, v3}, Lteam/opay/spos/printer/internal/OTextTypeface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->BOLD:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 26
    .line 27
    const-string v1, "B^B"

    .line 28
    .line 29
    const-string v2, "ALL_BOLD"

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-direct {v0, v2, v4, v1, v3}, Lteam/opay/spos/printer/internal/OTextTypeface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->ALL_BOLD:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 38
    .line 39
    const-string v1, "I"

    .line 40
    .line 41
    const-string v2, "ITALIC"

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    invoke-direct {v0, v2, v3, v1, v4}, Lteam/opay/spos/printer/internal/OTextTypeface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->ITALIC:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "BI"

    .line 53
    .line 54
    const-string v4, "BOLD_ITALIC"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2, v3}, Lteam/opay/spos/printer/internal/OTextTypeface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->BOLD_ITALIC:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 60
    .line 61
    invoke-static {}, Lteam/opay/spos/printer/internal/OTextTypeface;->$values()[Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->$VALUES:[Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 66
    .line 67
    new-instance v0, Lteam/opay/spos/printer/internal/OTextTypeface$Companion;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/internal/OTextTypeface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->Companion:Lteam/opay/spos/printer/internal/OTextTypeface$Companion;

    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/spos/printer/internal/OTextTypeface;->value:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lteam/opay/spos/printer/internal/OTextTypeface;->typeface:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->$VALUES:[Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTypeface()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/internal/OTextTypeface;->typeface:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/OTextTypeface;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
