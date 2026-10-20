.class public final enum Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
.super Ljava/lang/Enum;
.source "MobileTransferViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/tabs/MobileTransferInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEDUCT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "IN_DEDUCT",
        "OUT_DEDUCT",
        "OTHER",
        "Companion",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

.field public static final Companion:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum IN_DEDUCT:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

.field public static final enum OTHER:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

.field public static final enum OUT_DEDUCT:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->IN_DEDUCT:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->OUT_DEDUCT:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->OTHER:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

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
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 2
    .line 3
    const-string v1, "IN_DEDUCT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->IN_DEDUCT:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 12
    .line 13
    const-string v1, "OUT_DEDUCT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v1}, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->OUT_DEDUCT:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const-string v2, ""

    .line 25
    .line 26
    const-string v3, "OTHER"

    .line 27
    .line 28
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->OTHER:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 32
    .line 33
    invoke-static {}, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->$values()[Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->$VALUES:[Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->$ENTRIES:Lwo5;

    .line 44
    .line 45
    new-instance v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT$Companion;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->Companion:Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT$Companion;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->value:Ljava/lang/String;

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
            "Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->$VALUES:[Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
