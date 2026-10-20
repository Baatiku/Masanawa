.class public final enum Lcashier/PoolType;
.super Ljava/lang/Enum;
.source "CashierDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcashier/PoolType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcashier/PoolType;",
        "",
        "(Ljava/lang/String;I)V",
        "FORGET_PAYMENT_PIN",
        "SET_PAYMENT_PIN",
        "TRADE",
        "cashier_release"
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
.field private static final synthetic $VALUES:[Lcashier/PoolType;

.field public static final enum FORGET_PAYMENT_PIN:Lcashier/PoolType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetPaymentPin"
    .end annotation
.end field

.field public static final enum SET_PAYMENT_PIN:Lcashier/PoolType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SetPaymentPin"
    .end annotation
.end field

.field public static final enum TRADE:Lcashier/PoolType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Trade"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcashier/PoolType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcashier/PoolType;

    .line 3
    .line 4
    sget-object v1, Lcashier/PoolType;->FORGET_PAYMENT_PIN:Lcashier/PoolType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcashier/PoolType;->SET_PAYMENT_PIN:Lcashier/PoolType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcashier/PoolType;->TRADE:Lcashier/PoolType;

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
    new-instance v0, Lcashier/PoolType;

    .line 2
    .line 3
    const-string v1, "FORGET_PAYMENT_PIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcashier/PoolType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcashier/PoolType;->FORGET_PAYMENT_PIN:Lcashier/PoolType;

    .line 10
    .line 11
    new-instance v0, Lcashier/PoolType;

    .line 12
    .line 13
    const-string v1, "SET_PAYMENT_PIN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcashier/PoolType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcashier/PoolType;->SET_PAYMENT_PIN:Lcashier/PoolType;

    .line 20
    .line 21
    new-instance v0, Lcashier/PoolType;

    .line 22
    .line 23
    const-string v1, "TRADE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcashier/PoolType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcashier/PoolType;->TRADE:Lcashier/PoolType;

    .line 30
    .line 31
    invoke-static {}, Lcashier/PoolType;->$values()[Lcashier/PoolType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcashier/PoolType;->$VALUES:[Lcashier/PoolType;

    .line 36
    .line 37
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

.method public static valueOf(Ljava/lang/String;)Lcashier/PoolType;
    .locals 1

    .line 1
    const-class v0, Lcashier/PoolType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcashier/PoolType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcashier/PoolType;
    .locals 1

    .line 1
    sget-object v0, Lcashier/PoolType;->$VALUES:[Lcashier/PoolType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcashier/PoolType;

    .line 8
    .line 9
    return-object v0
.end method
