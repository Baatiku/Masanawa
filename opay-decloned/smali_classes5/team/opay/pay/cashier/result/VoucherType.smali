.class public final enum Lteam/opay/pay/cashier/result/VoucherType;
.super Ljava/lang/Enum;
.source "VoucherData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/cashier/result/VoucherType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/VoucherType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DISCOUNT",
        "REDUCE",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/cashier/result/VoucherType;

.field public static final enum DISCOUNT:Lteam/opay/pay/cashier/result/VoucherType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount"
    .end annotation
.end field

.field public static final enum REDUCE:Lteam/opay/pay/cashier/result/VoucherType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reduce"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/cashier/result/VoucherType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lteam/opay/pay/cashier/result/VoucherType;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/cashier/result/VoucherType;->DISCOUNT:Lteam/opay/pay/cashier/result/VoucherType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/cashier/result/VoucherType;->REDUCE:Lteam/opay/pay/cashier/result/VoucherType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/VoucherType;

    .line 2
    .line 3
    const-string v1, "DISCOUNT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/result/VoucherType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/cashier/result/VoucherType;->DISCOUNT:Lteam/opay/pay/cashier/result/VoucherType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/cashier/result/VoucherType;

    .line 12
    .line 13
    const-string v1, "REDUCE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/result/VoucherType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/cashier/result/VoucherType;->REDUCE:Lteam/opay/pay/cashier/result/VoucherType;

    .line 20
    .line 21
    invoke-static {}, Lteam/opay/pay/cashier/result/VoucherType;->$values()[Lteam/opay/pay/cashier/result/VoucherType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lteam/opay/pay/cashier/result/VoucherType;->$VALUES:[Lteam/opay/pay/cashier/result/VoucherType;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lteam/opay/pay/cashier/result/VoucherType;->$ENTRIES:Lwo5;

    .line 32
    .line 33
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
            "Lteam/opay/pay/cashier/result/VoucherType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/VoucherType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/cashier/result/VoucherType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/cashier/result/VoucherType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/cashier/result/VoucherType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/cashier/result/VoucherType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/VoucherType;->$VALUES:[Lteam/opay/pay/cashier/result/VoucherType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/cashier/result/VoucherType;

    .line 8
    .line 9
    return-object v0
.end method
