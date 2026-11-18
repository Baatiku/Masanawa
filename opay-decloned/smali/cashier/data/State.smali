.class public final enum Lcashier/data/State;
.super Ljava/lang/Enum;
.source "CashierData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcashier/data/State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcashier/data/State;",
        "",
        "(Ljava/lang/String;I)V",
        "PaymentAwaitCallback",
        "PaymentPlaceOrder",
        "PaymentPlaceOrderPIN",
        "PaymentCommitOTP",
        "PaymentCommitPhone",
        "PaymentCommitExt3DS",
        "PaymentFailed",
        "Complete",
        "Pending",
        "CardPending",
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
.field private static final synthetic $VALUES:[Lcashier/data/State;

.field public static final enum CardPending:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardPending"
    .end annotation
.end field

.field public static final enum Complete:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Complete"
    .end annotation
.end field

.field public static final enum PaymentAwaitCallback:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentAwaitCallback"
    .end annotation
.end field

.field public static final enum PaymentCommitExt3DS:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentCommitExt3DS"
    .end annotation
.end field

.field public static final enum PaymentCommitOTP:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentCommitOTP"
    .end annotation
.end field

.field public static final enum PaymentCommitPhone:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentCommitPhone"
    .end annotation
.end field

.field public static final enum PaymentFailed:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failed"
    .end annotation
.end field

.field public static final enum PaymentPlaceOrder:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentPlaceOrder"
    .end annotation
.end field

.field public static final enum PaymentPlaceOrderPIN:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentPlaceOrderPIN"
    .end annotation
.end field

.field public static final enum Pending:Lcashier/data/State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Pending"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcashier/data/State;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcashier/data/State;

    .line 4
    .line 5
    sget-object v1, Lcashier/data/State;->PaymentAwaitCallback:Lcashier/data/State;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcashier/data/State;->PaymentPlaceOrder:Lcashier/data/State;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcashier/data/State;->PaymentPlaceOrderPIN:Lcashier/data/State;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcashier/data/State;->PaymentCommitOTP:Lcashier/data/State;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcashier/data/State;->PaymentCommitPhone:Lcashier/data/State;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcashier/data/State;->PaymentCommitExt3DS:Lcashier/data/State;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcashier/data/State;->PaymentFailed:Lcashier/data/State;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcashier/data/State;->Complete:Lcashier/data/State;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcashier/data/State;->Pending:Lcashier/data/State;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcashier/data/State;->CardPending:Lcashier/data/State;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcashier/data/State;

    .line 2
    .line 3
    const-string v1, "PaymentAwaitCallback"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcashier/data/State;->PaymentAwaitCallback:Lcashier/data/State;

    .line 10
    .line 11
    new-instance v0, Lcashier/data/State;

    .line 12
    .line 13
    const-string v1, "PaymentPlaceOrder"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcashier/data/State;->PaymentPlaceOrder:Lcashier/data/State;

    .line 20
    .line 21
    new-instance v0, Lcashier/data/State;

    .line 22
    .line 23
    const-string v1, "PaymentPlaceOrderPIN"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcashier/data/State;->PaymentPlaceOrderPIN:Lcashier/data/State;

    .line 30
    .line 31
    new-instance v0, Lcashier/data/State;

    .line 32
    .line 33
    const-string v1, "PaymentCommitOTP"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcashier/data/State;->PaymentCommitOTP:Lcashier/data/State;

    .line 40
    .line 41
    new-instance v0, Lcashier/data/State;

    .line 42
    .line 43
    const-string v1, "PaymentCommitPhone"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcashier/data/State;->PaymentCommitPhone:Lcashier/data/State;

    .line 50
    .line 51
    new-instance v0, Lcashier/data/State;

    .line 52
    .line 53
    const-string v1, "PaymentCommitExt3DS"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcashier/data/State;->PaymentCommitExt3DS:Lcashier/data/State;

    .line 60
    .line 61
    new-instance v0, Lcashier/data/State;

    .line 62
    .line 63
    const-string v1, "PaymentFailed"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcashier/data/State;->PaymentFailed:Lcashier/data/State;

    .line 70
    .line 71
    new-instance v0, Lcashier/data/State;

    .line 72
    .line 73
    const-string v1, "Complete"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcashier/data/State;->Complete:Lcashier/data/State;

    .line 80
    .line 81
    new-instance v0, Lcashier/data/State;

    .line 82
    .line 83
    const-string v1, "Pending"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcashier/data/State;->Pending:Lcashier/data/State;

    .line 91
    .line 92
    new-instance v0, Lcashier/data/State;

    .line 93
    .line 94
    const-string v1, "CardPending"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcashier/data/State;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcashier/data/State;->CardPending:Lcashier/data/State;

    .line 102
    .line 103
    invoke-static {}, Lcashier/data/State;->$values()[Lcashier/data/State;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcashier/data/State;->$VALUES:[Lcashier/data/State;

    .line 108
    .line 109
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

.method public static valueOf(Ljava/lang/String;)Lcashier/data/State;
    .locals 1

    .line 1
    const-class v0, Lcashier/data/State;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcashier/data/State;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcashier/data/State;
    .locals 1

    .line 1
    sget-object v0, Lcashier/data/State;->$VALUES:[Lcashier/data/State;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcashier/data/State;

    .line 8
    .line 9
    return-object v0
.end method
