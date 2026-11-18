.class public final enum Lteam/opay/pay/transaction/HistoryFilter$Period;
.super Ljava/lang/Enum;
.source "HistoryFilter.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/HistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Period"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/transaction/HistoryFilter$Period;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter$Period;",
        "Landroid/os/Parcelable;",
        "",
        "str",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getStr",
        "()Ljava/lang/String;",
        "CHOOSE_MONTH",
        "THREE_MONTH",
        "SIX_MONTH",
        "ONE_YEAR",
        "CUSTOM",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/transaction/HistoryFilter$Period;

.field public static final enum CHOOSE_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lteam/opay/pay/transaction/HistoryFilter$Period;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum CUSTOM:Lteam/opay/pay/transaction/HistoryFilter$Period;

.field public static final enum ONE_YEAR:Lteam/opay/pay/transaction/HistoryFilter$Period;

.field public static final enum SIX_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

.field public static final enum THREE_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;


# instance fields
.field private final str:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/transaction/HistoryFilter$Period;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Period;->CHOOSE_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Period;->THREE_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Period;->SIX_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Period;->ONE_YEAR:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/pay/transaction/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/transaction/HistoryFilter$Period;

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
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "select_month"

    .line 5
    .line 6
    const-string v3, "CHOOSE_MONTH"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->CHOOSE_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "last_3_months"

    .line 17
    .line 18
    const-string v3, "THREE_MONTH"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->THREE_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "last_6_months"

    .line 29
    .line 30
    const-string v3, "SIX_MONTH"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->SIX_MONTH:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "last_1_year"

    .line 41
    .line 42
    const-string v3, "ONE_YEAR"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->ONE_YEAR:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "custom"

    .line 53
    .line 54
    const-string v3, "CUSTOM"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/transaction/HistoryFilter$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 60
    .line 61
    invoke-static {}, Lteam/opay/pay/transaction/HistoryFilter$Period;->$values()[Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->$VALUES:[Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->$ENTRIES:Lwo5;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Period$Creator;

    .line 74
    .line 75
    invoke-direct {v0}, Lteam/opay/pay/transaction/HistoryFilter$Period$Creator;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    .line 80
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
    iput-object p3, p0, Lteam/opay/pay/transaction/HistoryFilter$Period;->str:Ljava/lang/String;

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
            "Lteam/opay/pay/transaction/HistoryFilter$Period;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/transaction/HistoryFilter$Period;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/transaction/HistoryFilter$Period;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transaction/HistoryFilter$Period;->$VALUES:[Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Period;->str:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
