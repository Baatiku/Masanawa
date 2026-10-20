.class public final enum Lteam/opay/pay/home/security/GestureSetting;
.super Ljava/lang/Enum;
.source "GestureSettingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/home/security/GestureSetting;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B1\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/home/security/GestureSetting;",
        "",
        "textRes",
        "",
        "showChevron",
        "",
        "switchButton",
        "tint",
        "<init>",
        "(Ljava/lang/String;IIZZI)V",
        "getTextRes",
        "()I",
        "getShowChevron",
        "()Z",
        "getSwitchButton",
        "getTint",
        "SET_PATTERN",
        "LOGIN_WITH_PATTERN",
        "PATTERN_TRACK",
        "RESET_PATTERN",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/home/security/GestureSetting;

.field public static final enum LOGIN_WITH_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

.field public static final enum PATTERN_TRACK:Lteam/opay/pay/home/security/GestureSetting;

.field public static final enum RESET_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

.field public static final enum SET_PATTERN:Lteam/opay/pay/home/security/GestureSetting;


# instance fields
.field private final showChevron:Z

.field private final switchButton:Z

.field private final textRes:I

.field private final tint:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/home/security/GestureSetting;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lteam/opay/pay/home/security/GestureSetting;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/home/security/GestureSetting;->SET_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/home/security/GestureSetting;->LOGIN_WITH_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/home/security/GestureSetting;->PATTERN_TRACK:Lteam/opay/pay/home/security/GestureSetting;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/home/security/GestureSetting;->RESET_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

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
    .locals 19

    .line 1
    new-instance v9, Lteam/opay/pay/home/security/GestureSetting;

    .line 2
    .line 3
    sget v3, Lteam/opay/pay/R$string;->osdk_set_up_parttern:I

    .line 4
    .line 5
    const/16 v7, 0xa

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const-string v1, "SET_PATTERN"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v9

    .line 15
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/home/security/GestureSetting;-><init>(Ljava/lang/String;IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    sput-object v9, Lteam/opay/pay/home/security/GestureSetting;->SET_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

    .line 19
    .line 20
    new-instance v0, Lteam/opay/pay/home/security/GestureSetting;

    .line 21
    .line 22
    sget v13, Lteam/opay/pay/R$string;->login_with_pattern:I

    .line 23
    .line 24
    const/16 v17, 0xe

    .line 25
    .line 26
    const/16 v18, 0x0

    .line 27
    .line 28
    const-string v11, "LOGIN_WITH_PATTERN"

    .line 29
    .line 30
    const/4 v12, 0x1

    .line 31
    const/4 v14, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    move-object v10, v0

    .line 36
    invoke-direct/range {v10 .. v18}, Lteam/opay/pay/home/security/GestureSetting;-><init>(Ljava/lang/String;IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/home/security/GestureSetting;->LOGIN_WITH_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/home/security/GestureSetting;

    .line 42
    .line 43
    sget v4, Lteam/opay/pay/R$string;->pattern_track:I

    .line 44
    .line 45
    const/16 v8, 0xe

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const-string v2, "PATTERN_TRACK"

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/home/security/GestureSetting;-><init>(Ljava/lang/String;IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lteam/opay/pay/home/security/GestureSetting;->PATTERN_TRACK:Lteam/opay/pay/home/security/GestureSetting;

    .line 57
    .line 58
    new-instance v0, Lteam/opay/pay/home/security/GestureSetting;

    .line 59
    .line 60
    sget v13, Lteam/opay/pay/R$string;->reset_pattern:I

    .line 61
    .line 62
    const/16 v17, 0xa

    .line 63
    .line 64
    const-string v11, "RESET_PATTERN"

    .line 65
    .line 66
    const/4 v12, 0x3

    .line 67
    move-object v10, v0

    .line 68
    invoke-direct/range {v10 .. v18}, Lteam/opay/pay/home/security/GestureSetting;-><init>(Ljava/lang/String;IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/pay/home/security/GestureSetting;->RESET_PATTERN:Lteam/opay/pay/home/security/GestureSetting;

    .line 72
    .line 73
    invoke-static {}, Lteam/opay/pay/home/security/GestureSetting;->$values()[Lteam/opay/pay/home/security/GestureSetting;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lteam/opay/pay/home/security/GestureSetting;->$VALUES:[Lteam/opay/pay/home/security/GestureSetting;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lteam/opay/pay/home/security/GestureSetting;->$ENTRIES:Lwo5;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lteam/opay/pay/home/security/GestureSetting;->textRes:I

    .line 3
    iput-boolean p4, p0, Lteam/opay/pay/home/security/GestureSetting;->showChevron:Z

    .line 4
    iput-boolean p5, p0, Lteam/opay/pay/home/security/GestureSetting;->switchButton:Z

    .line 5
    iput p6, p0, Lteam/opay/pay/home/security/GestureSetting;->tint:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    .line 6
    sget v0, Lteam/opay/pay/R$color;->primary:I

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 7
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/home/security/GestureSetting;-><init>(Ljava/lang/String;IIZZI)V

    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/pay/home/security/GestureSetting;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/security/GestureSetting;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/home/security/GestureSetting;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/home/security/GestureSetting;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/home/security/GestureSetting;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/home/security/GestureSetting;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/security/GestureSetting;->$VALUES:[Lteam/opay/pay/home/security/GestureSetting;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/home/security/GestureSetting;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getShowChevron()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/GestureSetting;->showChevron:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSwitchButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/GestureSetting;->switchButton:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTextRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/home/security/GestureSetting;->textRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTint()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/home/security/GestureSetting;->tint:I

    .line 2
    .line 3
    return v0
.end method
