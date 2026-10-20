.class public final enum Lteam/opay/pay/update/dialog/ConfirmStyle;
.super Ljava/lang/Enum;
.source "UpgradeDialogStyle.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/update/dialog/ConfirmStyle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/update/dialog/ConfirmStyle;",
        "",
        "resId",
        "",
        "(Ljava/lang/String;II)V",
        "getResId",
        "()I",
        "DEFAULT_STYLE",
        "GREEN_STYLE",
        "update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lteam/opay/pay/update/dialog/ConfirmStyle;

.field public static final enum DEFAULT_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;

.field public static final enum GREEN_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;


# instance fields
.field private final resId:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/update/dialog/ConfirmStyle;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/update/dialog/ConfirmStyle;->DEFAULT_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/update/dialog/ConfirmStyle;->GREEN_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;

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
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget v2, Lteam/opay/pay/update/R$color;->update_color_green:I

    .line 5
    .line 6
    const-string v3, "DEFAULT_STYLE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/update/dialog/ConfirmStyle;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/update/dialog/ConfirmStyle;->DEFAULT_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    sget v2, Lteam/opay/pay/update/R$color;->update_color_27dc4c:I

    .line 17
    .line 18
    const-string v3, "GREEN_STYLE"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/update/dialog/ConfirmStyle;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/update/dialog/ConfirmStyle;->GREEN_STYLE:Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 24
    .line 25
    invoke-static {}, Lteam/opay/pay/update/dialog/ConfirmStyle;->$values()[Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lteam/opay/pay/update/dialog/ConfirmStyle;->$VALUES:[Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 30
    .line 31
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

    iput p3, p0, Lteam/opay/pay/update/dialog/ConfirmStyle;->resId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 2
    sget p3, Lteam/opay/pay/update/R$color;->update_color_27dc4c:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/update/dialog/ConfirmStyle;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/update/dialog/ConfirmStyle;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/update/dialog/ConfirmStyle;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/update/dialog/ConfirmStyle;->$VALUES:[Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/update/dialog/ConfirmStyle;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getResId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/update/dialog/ConfirmStyle;->resId:I

    .line 2
    .line 3
    return v0
.end method
