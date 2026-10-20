.class public final enum Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;
.super Ljava/lang/Enum;
.source "ClipboardIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "OPAY_USER_LINK",
        "OPAY_USER_BANK",
        "BANK_ACCOUNT",
        "MULTIPLE_BANKS",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

.field public static final enum BANK_ACCOUNT:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

.field public static final enum MULTIPLE_BANKS:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

.field public static final enum OPAY_USER_BANK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

.field public static final enum OPAY_USER_LINK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->OPAY_USER_LINK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->OPAY_USER_BANK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->BANK_ACCOUNT:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->MULTIPLE_BANKS:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 2
    .line 3
    const-string v1, "OPAY_USER_LINK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->OPAY_USER_LINK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 12
    .line 13
    const-string v1, "OPAY_USER_BANK"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->OPAY_USER_BANK:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 22
    .line 23
    const-string v1, "BANK_ACCOUNT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->BANK_ACCOUNT:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 32
    .line 33
    const-string v1, "MULTIPLE_BANKS"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->MULTIPLE_BANKS:Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 40
    .line 41
    invoke-static {}, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->$values()[Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->$VALUES:[Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->$ENTRIES:Lwo5;

    .line 52
    .line 53
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
            "Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;->$VALUES:[Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/home/clipboard/ClipboardRecipientInfo$Type;

    .line 8
    .line 9
    return-object v0
.end method
