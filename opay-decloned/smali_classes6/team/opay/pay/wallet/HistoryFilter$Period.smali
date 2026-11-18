.class public final enum Lteam/opay/pay/wallet/HistoryFilter$Period;
.super Ljava/lang/Enum;
.source "HistoryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/wallet/HistoryFilter$Period;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "team/opay/pay/wallet/HistoryFilter$Period",
        "",
        "Lteam/opay/pay/wallet/HistoryFilter$Period;",
        "",
        "labelId",
        "<init>",
        "(Ljava/lang/String;II)V",
        "I",
        "getLabelId",
        "()I",
        "ALL_TIME",
        "CUSTOM",
        "LAST_WEEK",
        "THIRTY_DAYS_AGO",
        "TWO_WEEKS_AGO",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/wallet/HistoryFilter$Period;

.field public static final enum ALL_TIME:Lteam/opay/pay/wallet/HistoryFilter$Period;

.field public static final enum CUSTOM:Lteam/opay/pay/wallet/HistoryFilter$Period;

.field public static final enum LAST_WEEK:Lteam/opay/pay/wallet/HistoryFilter$Period;

.field public static final enum THIRTY_DAYS_AGO:Lteam/opay/pay/wallet/HistoryFilter$Period;

.field public static final enum TWO_WEEKS_AGO:Lteam/opay/pay/wallet/HistoryFilter$Period;


# instance fields
.field private final labelId:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/wallet/HistoryFilter$Period;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->ALL_TIME:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->LAST_WEEK:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->THIRTY_DAYS_AGO:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->TWO_WEEKS_AGO:Lteam/opay/pay/wallet/HistoryFilter$Period;

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
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget v2, Lteam/opay/pay/R$string;->wallet_filter_label_all_time:I

    .line 5
    .line 6
    const-string v3, "ALL_TIME"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/wallet/HistoryFilter$Period;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->ALL_TIME:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    sget v2, Lteam/opay/pay/R$string;->wallet_filter_label_custom:I

    .line 17
    .line 18
    const-string v3, "CUSTOM"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/wallet/HistoryFilter$Period;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    sget v2, Lteam/opay/pay/R$string;->wallet_filter_label_last_week:I

    .line 29
    .line 30
    const-string v3, "LAST_WEEK"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/wallet/HistoryFilter$Period;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->LAST_WEEK:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    sget v2, Lteam/opay/pay/R$string;->wallet_filter_label_thirty_days_ago:I

    .line 41
    .line 42
    const-string v3, "THIRTY_DAYS_AGO"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/wallet/HistoryFilter$Period;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->THIRTY_DAYS_AGO:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    sget v2, Lteam/opay/pay/R$string;->wallet_filter_label_two_weeks_ago:I

    .line 53
    .line 54
    const-string v3, "TWO_WEEKS_AGO"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/wallet/HistoryFilter$Period;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->TWO_WEEKS_AGO:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 60
    .line 61
    invoke-static {}, Lteam/opay/pay/wallet/HistoryFilter$Period;->$values()[Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->$VALUES:[Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->$ENTRIES:Lwo5;

    .line 72
    .line 73
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
    iput p3, p0, Lteam/opay/pay/wallet/HistoryFilter$Period;->labelId:I

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
            "Lteam/opay/pay/wallet/HistoryFilter$Period;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/wallet/HistoryFilter$Period;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/wallet/HistoryFilter$Period;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->$VALUES:[Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLabelId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Period;->labelId:I

    .line 2
    .line 3
    return v0
.end method
