.class public final enum Lteam/opay/pay/transaction/HistoryFilter$Status;
.super Ljava/lang/Enum;
.source "HistoryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/HistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/transaction/HistoryFilter$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter$Status;",
        "",
        "labelId",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getLabelId",
        "()I",
        "getCode",
        "()Ljava/lang/String;",
        "ANY",
        "EXPIRED",
        "PENDING",
        "SUCCESSFUL",
        "TOBEPAY",
        "REVERSED",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/transaction/HistoryFilter$Status;

.field public static final enum ANY:Lteam/opay/pay/transaction/HistoryFilter$Status;

.field public static final enum EXPIRED:Lteam/opay/pay/transaction/HistoryFilter$Status;

.field public static final enum PENDING:Lteam/opay/pay/transaction/HistoryFilter$Status;

.field public static final enum REVERSED:Lteam/opay/pay/transaction/HistoryFilter$Status;

.field public static final enum SUCCESSFUL:Lteam/opay/pay/transaction/HistoryFilter$Status;

.field public static final enum TOBEPAY:Lteam/opay/pay/transaction/HistoryFilter$Status;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final labelId:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/transaction/HistoryFilter$Status;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Status;->ANY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Status;->EXPIRED:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Status;->PENDING:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Status;->SUCCESSFUL:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Status;->TOBEPAY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Status;->REVERSED:Lteam/opay/pay/transaction/HistoryFilter$Status;

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
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$string;->wallet_filter_label_any_status:I

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "ANY"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->ANY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 16
    .line 17
    sget v1, Lteam/opay/pay/R$string;->wallet_filter_label_expired:I

    .line 18
    .line 19
    const-string v2, "Failure"

    .line 20
    .line 21
    const-string v3, "EXPIRED"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->EXPIRED:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 28
    .line 29
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 30
    .line 31
    sget v1, Lteam/opay/pay/R$string;->wallet_filter_label_pending:I

    .line 32
    .line 33
    const-string v2, "Pending"

    .line 34
    .line 35
    const-string v3, "PENDING"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->PENDING:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 42
    .line 43
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 44
    .line 45
    sget v1, Lteam/opay/pay/R$string;->wallet_filter_label_successful:I

    .line 46
    .line 47
    const-string v2, "Successful"

    .line 48
    .line 49
    const-string v3, "SUCCESSFUL"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->SUCCESSFUL:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 56
    .line 57
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 58
    .line 59
    sget v1, Lteam/opay/pay/R$string;->transaction_state_to_be_paid:I

    .line 60
    .line 61
    const-string v2, "TobePay"

    .line 62
    .line 63
    const-string v3, "TOBEPAY"

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->TOBEPAY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 72
    .line 73
    sget v1, Lteam/opay/pay/R$string;->transaction_reversed:I

    .line 74
    .line 75
    const-string v2, "Reversed"

    .line 76
    .line 77
    const-string v3, "REVERSED"

    .line 78
    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->REVERSED:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 84
    .line 85
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter$Status;->$values()[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->$VALUES:[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->$ENTRIES:Lwo5;

    .line 96
    .line 97
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lteam/opay/pay/transaction/HistoryFilter$Status;->labelId:I

    .line 5
    .line 6
    iput-object p4, p0, Lteam/opay/pay/transaction/HistoryFilter$Status;->code:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/pay/transaction/HistoryFilter$Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/transaction/HistoryFilter$Status;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/transaction/HistoryFilter$Status;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter$Status;->$VALUES:[Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/transaction/HistoryFilter$Status;

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
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Status;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Status;->labelId:I

    .line 2
    .line 3
    return v0
.end method
