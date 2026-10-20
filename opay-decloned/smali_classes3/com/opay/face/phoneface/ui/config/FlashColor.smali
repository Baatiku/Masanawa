.class public final enum Lcom/opay/face/phoneface/ui/config/FlashColor;
.super Ljava/lang/Enum;
.source "FlashColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opay/face/phoneface/ui/config/FlashColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/opay/face/phoneface/ui/config/FlashColor;

.field public static final enum B:Lcom/opay/face/phoneface/ui/config/FlashColor;

.field public static final enum BLACK:Lcom/opay/face/phoneface/ui/config/FlashColor;

.field public static final enum G:Lcom/opay/face/phoneface/ui/config/FlashColor;

.field public static final enum R:Lcom/opay/face/phoneface/ui/config/FlashColor;

.field public static final enum W:Lcom/opay/face/phoneface/ui/config/FlashColor;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const-string v3, "W"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/opay/face/phoneface/ui/config/FlashColor;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/opay/face/phoneface/ui/config/FlashColor;->W:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 11
    .line 12
    new-instance v2, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/high16 v4, -0x10000

    .line 16
    .line 17
    const-string v5, "R"

    .line 18
    .line 19
    invoke-direct {v2, v5, v3, v4}, Lcom/opay/face/phoneface/ui/config/FlashColor;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/opay/face/phoneface/ui/config/FlashColor;->R:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 23
    .line 24
    new-instance v4, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const v6, -0xff0100

    .line 28
    .line 29
    .line 30
    const-string v7, "G"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/opay/face/phoneface/ui/config/FlashColor;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/opay/face/phoneface/ui/config/FlashColor;->G:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 36
    .line 37
    new-instance v6, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const v8, -0xffff01

    .line 41
    .line 42
    .line 43
    const-string v9, "B"

    .line 44
    .line 45
    invoke-direct {v6, v9, v7, v8}, Lcom/opay/face/phoneface/ui/config/FlashColor;-><init>(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    sput-object v6, Lcom/opay/face/phoneface/ui/config/FlashColor;->B:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 49
    .line 50
    new-instance v8, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 51
    .line 52
    const/4 v9, 0x4

    .line 53
    const/high16 v10, -0x1000000

    .line 54
    .line 55
    const-string v11, "BLACK"

    .line 56
    .line 57
    invoke-direct {v8, v11, v9, v10}, Lcom/opay/face/phoneface/ui/config/FlashColor;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v8, Lcom/opay/face/phoneface/ui/config/FlashColor;->BLACK:Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 61
    .line 62
    const/4 v10, 0x5

    .line 63
    new-array v10, v10, [Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 64
    .line 65
    aput-object v0, v10, v1

    .line 66
    .line 67
    aput-object v2, v10, v3

    .line 68
    .line 69
    aput-object v4, v10, v5

    .line 70
    .line 71
    aput-object v6, v10, v7

    .line 72
    .line 73
    aput-object v8, v10, v9

    .line 74
    .line 75
    sput-object v10, Lcom/opay/face/phoneface/ui/config/FlashColor;->$VALUES:[Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 76
    .line 77
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
    iput p3, p0, Lcom/opay/face/phoneface/ui/config/FlashColor;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/FlashColor;
    .locals 1

    .line 1
    const-class v0, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/opay/face/phoneface/ui/config/FlashColor;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/config/FlashColor;->$VALUES:[Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/opay/face/phoneface/ui/config/FlashColor;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/opay/face/phoneface/ui/config/FlashColor;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/FlashColor;->value:I

    .line 2
    .line 3
    return v0
.end method
