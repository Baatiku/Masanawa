.class final enum Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;
.super Ljava/lang/Enum;
.source "CreateGestureActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;",
        "",
        "strId",
        "",
        "colorId",
        "<init>",
        "(Ljava/lang/String;III)V",
        "getStrId",
        "()I",
        "getColorId",
        "DEFAULT",
        "CORRECT",
        "LESS_ERROR",
        "CONFIRM_ERROR",
        "CONFIRM_CORRECT",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

.field public static final enum CONFIRM_CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

.field public static final enum CONFIRM_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

.field public static final enum CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

.field public static final enum DEFAULT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

.field public static final enum LESS_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;


# instance fields
.field private final colorId:I

.field private final strId:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->DEFAULT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->LESS_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CONFIRM_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CONFIRM_CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

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
    .locals 6

    .line 1
    new-instance v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$string;->create_gesture_default:I

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$color;->color_a5a5a5:I

    .line 6
    .line 7
    const-string v3, "DEFAULT"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;-><init>(Ljava/lang/String;III)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->DEFAULT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 14
    .line 15
    new-instance v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    sget v3, Lteam/opay/pay/R$string;->pattern_set_null:I

    .line 19
    .line 20
    const-string v4, "CORRECT"

    .line 21
    .line 22
    invoke-direct {v0, v4, v1, v3, v2}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;-><init>(Ljava/lang/String;III)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 26
    .line 27
    new-instance v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 28
    .line 29
    sget v1, Lteam/opay/pay/R$string;->create_gesture_less_error:I

    .line 30
    .line 31
    sget v3, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 32
    .line 33
    const-string v4, "LESS_ERROR"

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-direct {v0, v4, v5, v1, v3}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;-><init>(Ljava/lang/String;III)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->LESS_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    sget v4, Lteam/opay/pay/R$string;->pattern_set_error_tips:I

    .line 45
    .line 46
    const-string v5, "CONFIRM_ERROR"

    .line 47
    .line 48
    invoke-direct {v0, v5, v1, v4, v3}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;-><init>(Ljava/lang/String;III)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CONFIRM_ERROR:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 52
    .line 53
    new-instance v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    sget v3, Lteam/opay/pay/R$string;->create_gesture_confirm_correct:I

    .line 57
    .line 58
    const-string v4, "CONFIRM_CORRECT"

    .line 59
    .line 60
    invoke-direct {v0, v4, v1, v3, v2}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;-><init>(Ljava/lang/String;III)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->CONFIRM_CORRECT:Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 64
    .line 65
    invoke-static {}, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->$values()[Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->$VALUES:[Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->$ENTRIES:Lwo5;

    .line 76
    .line 77
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
    iput p3, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->strId:I

    .line 5
    .line 6
    iput p4, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->colorId:I

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
            "Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->$VALUES:[Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getColorId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->colorId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStrId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/demo/activity/CreateGestureActivity$Status;->strId:I

    .line 2
    .line 3
    return v0
.end method
