.class public final enum Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
.super Ljava/lang/Enum;
.source "PERFORMANCE.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "",
        "ratio",
        "",
        "<init>",
        "(Ljava/lang/String;IF)V",
        "getRatio",
        "()F",
        "PERFORMANCE_LOW",
        "PERFORMANCE_MIDDLE",
        "PERFORMANCE_HIGH",
        "opay-qrcode-core_release"
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

.field private static final synthetic $VALUES:[Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

.field public static final enum PERFORMANCE_HIGH:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

.field public static final enum PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

.field public static final enum PERFORMANCE_MIDDLE:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;


# instance fields
.field private final ratio:F


# direct methods
.method private static final synthetic $values()[Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_MIDDLE:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_HIGH:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

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
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f000000    # 0.5f

    .line 5
    .line 6
    const-string v3, "PERFORMANCE_LOW"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;-><init>(Ljava/lang/String;IF)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const v2, 0x3f333333    # 0.7f

    .line 17
    .line 18
    .line 19
    const-string v3, "PERFORMANCE_MIDDLE"

    .line 20
    .line 21
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;-><init>(Ljava/lang/String;IF)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_MIDDLE:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 25
    .line 26
    new-instance v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    const-string v3, "PERFORMANCE_HIGH"

    .line 32
    .line 33
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;-><init>(Ljava/lang/String;IF)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_HIGH:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 37
    .line 38
    invoke-static {}, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->$values()[Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->$VALUES:[Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->$ENTRIES:Lwo5;

    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->ratio:F

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
            "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->$VALUES:[Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->ratio:F

    .line 2
    .line 3
    return v0
.end method
