.class public final enum Lteam/opay/pay/cashier/PayChannel;
.super Ljava/lang/Enum;
.source "CashDesk.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/PayChannel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/cashier/PayChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/cashier/PayChannel;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "BANK_ACCOUNT",
        "BALANCE",
        "BONUS",
        "OWEALTH",
        "BANK_CARD",
        "FIXED_DEPOSIT",
        "reportId",
        "",
        "getReportId",
        "()Ljava/lang/String;",
        "toString",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/cashier/PayChannel;

.field public static final enum BALANCE:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BalancePayment"
    .end annotation
.end field

.field public static final enum BANK_ACCOUNT:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BankAccount"
    .end annotation
.end field

.field public static final enum BANK_CARD:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BankCard"
    .end annotation
.end field

.field public static final enum BONUS:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BonusPayment"
    .end annotation
.end field

.field public static final enum FIXED_DEPOSIT:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FlexiFixed"
    .end annotation
.end field

.field public static final enum OWEALTH:Lteam/opay/pay/cashier/PayChannel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OWealth"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/cashier/PayChannel;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lteam/opay/pay/cashier/PayChannel;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/cashier/PayChannel;->BANK_ACCOUNT:Lteam/opay/pay/cashier/PayChannel;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/cashier/PayChannel;->BALANCE:Lteam/opay/pay/cashier/PayChannel;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/cashier/PayChannel;->BONUS:Lteam/opay/pay/cashier/PayChannel;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/cashier/PayChannel;->OWEALTH:Lteam/opay/pay/cashier/PayChannel;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/pay/cashier/PayChannel;->BANK_CARD:Lteam/opay/pay/cashier/PayChannel;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lteam/opay/pay/cashier/PayChannel;->FIXED_DEPOSIT:Lteam/opay/pay/cashier/PayChannel;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PayChannel;

    .line 2
    .line 3
    const-string v1, "BANK_ACCOUNT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/PayChannel;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->BANK_ACCOUNT:Lteam/opay/pay/cashier/PayChannel;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/cashier/PayChannel;

    .line 12
    .line 13
    const-string v1, "BALANCE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/PayChannel;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->BALANCE:Lteam/opay/pay/cashier/PayChannel;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/cashier/PayChannel;

    .line 22
    .line 23
    const-string v1, "BONUS"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/PayChannel;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->BONUS:Lteam/opay/pay/cashier/PayChannel;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/cashier/PayChannel;

    .line 32
    .line 33
    const-string v1, "OWEALTH"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/PayChannel;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->OWEALTH:Lteam/opay/pay/cashier/PayChannel;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/cashier/PayChannel;

    .line 42
    .line 43
    const-string v1, "BANK_CARD"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/PayChannel;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->BANK_CARD:Lteam/opay/pay/cashier/PayChannel;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/pay/cashier/PayChannel;

    .line 52
    .line 53
    const-string v1, "FIXED_DEPOSIT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/PayChannel;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->FIXED_DEPOSIT:Lteam/opay/pay/cashier/PayChannel;

    .line 60
    .line 61
    invoke-static {}, Lteam/opay/pay/cashier/PayChannel;->$values()[Lteam/opay/pay/cashier/PayChannel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->$VALUES:[Lteam/opay/pay/cashier/PayChannel;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lteam/opay/pay/cashier/PayChannel;->$ENTRIES:Lwo5;

    .line 72
    .line 73
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
            "Lteam/opay/pay/cashier/PayChannel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PayChannel;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/cashier/PayChannel;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/cashier/PayChannel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/cashier/PayChannel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/cashier/PayChannel;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PayChannel;->$VALUES:[Lteam/opay/pay/cashier/PayChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/cashier/PayChannel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getReportId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PayChannel$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const-string v0, "6"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const-string v0, "4"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    const-string v0, "3"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    const-string v0, "2"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_4
    const-string v0, "1"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    const-string v0, "0"

    .line 34
    .line 35
    :goto_0
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PayChannel$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 13
    .line 14
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    const-string v0, "BankAccount"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const-string v0, "FlexiFixed"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    const-string v0, "BankCard"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    const-string v0, "OWealth"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_4
    const-string v0, "BonusPayment"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    const-string v0, "BalancePayment"

    .line 34
    .line 35
    :goto_0
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
