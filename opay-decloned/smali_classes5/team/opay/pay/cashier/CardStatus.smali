.class public final enum Lteam/opay/pay/cashier/CardStatus;
.super Ljava/lang/Enum;
.source "CashDesk.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/cashier/CardStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/pay/cashier/CardStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "I",
        "Y",
        "N",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/cashier/CardStatus;

.field public static final enum I:Lteam/opay/pay/cashier/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "I"
    .end annotation
.end field

.field public static final enum N:Lteam/opay/pay/cashier/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "N"
    .end annotation
.end field

.field public static final enum Y:Lteam/opay/pay/cashier/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Y"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/cashier/CardStatus;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/pay/cashier/CardStatus;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/cashier/CardStatus;->I:Lteam/opay/pay/cashier/CardStatus;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/cashier/CardStatus;->Y:Lteam/opay/pay/cashier/CardStatus;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/cashier/CardStatus;->N:Lteam/opay/pay/cashier/CardStatus;

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
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/CardStatus;

    .line 2
    .line 3
    const-string v1, "I"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/CardStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/cashier/CardStatus;->I:Lteam/opay/pay/cashier/CardStatus;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/cashier/CardStatus;

    .line 12
    .line 13
    const-string v1, "Y"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/CardStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/cashier/CardStatus;->Y:Lteam/opay/pay/cashier/CardStatus;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/cashier/CardStatus;

    .line 22
    .line 23
    const-string v1, "N"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/CardStatus;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/cashier/CardStatus;->N:Lteam/opay/pay/cashier/CardStatus;

    .line 30
    .line 31
    invoke-static {}, Lteam/opay/pay/cashier/CardStatus;->$values()[Lteam/opay/pay/cashier/CardStatus;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lteam/opay/pay/cashier/CardStatus;->$VALUES:[Lteam/opay/pay/cashier/CardStatus;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lteam/opay/pay/cashier/CardStatus;->$ENTRIES:Lwo5;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/pay/cashier/CardStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/CardStatus;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/cashier/CardStatus;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/cashier/CardStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/cashier/CardStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/cashier/CardStatus;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/CardStatus;->$VALUES:[Lteam/opay/pay/cashier/CardStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/cashier/CardStatus;

    .line 8
    .line 9
    return-object v0
.end method
