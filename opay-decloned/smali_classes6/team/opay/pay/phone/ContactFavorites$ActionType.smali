.class public final enum Lteam/opay/pay/phone/ContactFavorites$ActionType;
.super Ljava/lang/Enum;
.source "ContactFavorites.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/phone/ContactFavorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/phone/ContactFavorites$ActionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/phone/ContactFavorites$ActionType;",
        "",
        "iconRes",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getIconRes",
        "()I",
        "ADD",
        "MANAGE",
        "EDIT",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/phone/ContactFavorites$ActionType;

.field public static final enum ADD:Lteam/opay/pay/phone/ContactFavorites$ActionType;

.field public static final enum EDIT:Lteam/opay/pay/phone/ContactFavorites$ActionType;

.field public static final enum MANAGE:Lteam/opay/pay/phone/ContactFavorites$ActionType;


# instance fields
.field private final iconRes:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/phone/ContactFavorites$ActionType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/phone/ContactFavorites$ActionType;->ADD:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/phone/ContactFavorites$ActionType;->MANAGE:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/phone/ContactFavorites$ActionType;->EDIT:Lteam/opay/pay/phone/ContactFavorites$ActionType;

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
    new-instance v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget v2, Lteam/opay/pay/R$drawable;->ic_add:I

    .line 5
    .line 6
    const-string v3, "ADD"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/phone/ContactFavorites$ActionType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->ADD:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    sget v2, Lteam/opay/pay/R$drawable;->ic_more_horizontal:I

    .line 17
    .line 18
    const-string v3, "MANAGE"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/phone/ContactFavorites$ActionType;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->MANAGE:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    sget v2, Lteam/opay/pay/R$drawable;->ic_edit:I

    .line 29
    .line 30
    const-string v3, "EDIT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/phone/ContactFavorites$ActionType;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->EDIT:Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 36
    .line 37
    invoke-static {}, Lteam/opay/pay/phone/ContactFavorites$ActionType;->$values()[Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->$VALUES:[Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->$ENTRIES:Lwo5;

    .line 48
    .line 49
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
    iput p3, p0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->iconRes:I

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
            "Lteam/opay/pay/phone/ContactFavorites$ActionType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/phone/ContactFavorites$ActionType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/phone/ContactFavorites$ActionType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->$VALUES:[Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/phone/ContactFavorites$ActionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIconRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/phone/ContactFavorites$ActionType;->iconRes:I

    .line 2
    .line 3
    return v0
.end method
