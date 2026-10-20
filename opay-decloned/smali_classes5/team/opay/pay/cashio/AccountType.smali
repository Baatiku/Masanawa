.class public final enum Lteam/opay/pay/cashio/AccountType;
.super Ljava/lang/Enum;
.source "CashInActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/cashio/AccountType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/cashio/AccountType;",
        "",
        "title",
        "",
        "icon",
        "<init>",
        "(Ljava/lang/String;III)V",
        "getTitle",
        "()I",
        "getIcon",
        "BALANCE",
        "OWEALTH",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/cashio/AccountType;

.field public static final enum BALANCE:Lteam/opay/pay/cashio/AccountType;

.field public static final enum OWEALTH:Lteam/opay/pay/cashio/AccountType;


# instance fields
.field private final icon:I

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/cashio/AccountType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lteam/opay/pay/cashio/AccountType;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/cashio/AccountType;->BALANCE:Lteam/opay/pay/cashio/AccountType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/cashio/AccountType;->OWEALTH:Lteam/opay/pay/cashio/AccountType;

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
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/cashio/AccountType;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$string;->cash_in_to_balance:I

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$drawable;->ic_pay_type_balance:I

    .line 6
    .line 7
    const-string v3, "BALANCE"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/cashio/AccountType;-><init>(Ljava/lang/String;III)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/pay/cashio/AccountType;->BALANCE:Lteam/opay/pay/cashio/AccountType;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/pay/cashio/AccountType;

    .line 16
    .line 17
    sget v1, Lteam/opay/pay/R$string;->cash_in_to_owealth:I

    .line 18
    .line 19
    sget v2, Lteam/opay/pay/R$drawable;->ic_pay_type_wealth:I

    .line 20
    .line 21
    const-string v3, "OWEALTH"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/cashio/AccountType;-><init>(Ljava/lang/String;III)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lteam/opay/pay/cashio/AccountType;->OWEALTH:Lteam/opay/pay/cashio/AccountType;

    .line 28
    .line 29
    invoke-static {}, Lteam/opay/pay/cashio/AccountType;->$values()[Lteam/opay/pay/cashio/AccountType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lteam/opay/pay/cashio/AccountType;->$VALUES:[Lteam/opay/pay/cashio/AccountType;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lteam/opay/pay/cashio/AccountType;->$ENTRIES:Lwo5;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lteam/opay/pay/cashio/AccountType;->title:I

    .line 5
    .line 6
    iput p4, p0, Lteam/opay/pay/cashio/AccountType;->icon:I

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
            "Lteam/opay/pay/cashio/AccountType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/AccountType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/cashio/AccountType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/cashio/AccountType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/cashio/AccountType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/cashio/AccountType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashio/AccountType;->$VALUES:[Lteam/opay/pay/cashio/AccountType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/cashio/AccountType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/cashio/AccountType;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/cashio/AccountType;->title:I

    .line 2
    .line 3
    return v0
.end method
