.class public final Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
.super Ljava/lang/Object;
.source "TransferFilterTask.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BS\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012(\u0008\u0002\u0010\u0007\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n`\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0006\u0010\u001c\u001a\u00020\u0000J\u0010\u0010\u001d\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\tJ\u0010\u0010\u001f\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\tJ\n\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002J\n\u0010!\u001a\u0004\u0018\u00010\u0005H\u0002J\u001a\u0010\"\u001a\u00020\t2\u0008\u0010#\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010$\u001a\u00020\tJ\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J)\u0010(\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n`\u000bH\u00c6\u0003JU\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052(\u0008\u0002\u0010\u0007\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n`\u000bH\u00c6\u0001J\u0006\u0010*\u001a\u00020+J\u0013\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u00d6\u0003J\t\u00100\u001a\u00020+H\u00d6\u0001J\t\u00101\u001a\u00020\tH\u00d6\u0001J\u0016\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020+R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R:\u0010\u0007\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u00067"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
        "Landroid/os/Parcelable;",
        "period",
        "Lteam/opay/business/transfer/flow/internal/Period;",
        "startDate",
        "Ljava/util/Date;",
        "endDate",
        "filters",
        "Ljava/util/HashMap;",
        "",
        "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
        "Lkotlin/collections/HashMap;",
        "<init>",
        "(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)V",
        "getPeriod",
        "()Lteam/opay/business/transfer/flow/internal/Period;",
        "setPeriod",
        "(Lteam/opay/business/transfer/flow/internal/Period;)V",
        "getStartDate",
        "()Ljava/util/Date;",
        "setStartDate",
        "(Ljava/util/Date;)V",
        "getEndDate",
        "setEndDate",
        "getFilters",
        "()Ljava/util/HashMap;",
        "setFilters",
        "(Ljava/util/HashMap;)V",
        "deepCopy",
        "formatEndDate",
        "format",
        "formatStartDate",
        "calculateStartDate",
        "calculateEndDate",
        "showDateString",
        "dateString",
        "pattern",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "business-transfer-flow_release"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private endDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private period:Lteam/opay/business/transfer/flow/internal/Period;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/internal/Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/internal/Period;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 4
    iput-object p2, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 5
    iput-object p3, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 6
    iput-object p4, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 7
    sget-object p1, Lteam/opay/business/transfer/flow/internal/Period;->ALL_TIME:Lteam/opay/business/transfer/flow/internal/Period;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 8
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)V

    return-void
.end method

.method private final calculateEndDate()Ljava/util/Date;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter$a;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-object v0
.end method

.method private final calculateStartDate()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 7
    .line 8
    sget-object v2, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    aget v1, v2, v1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v1, v2, :cond_4

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v1, v2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq v1, v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {v0}, Le33;->e(Ljava/util/Date;)Ljava/util/Date;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_5

    .line 39
    .line 40
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/16 v1, 0x1e

    .line 49
    .line 50
    invoke-static {v0, v1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/16 v1, 0xe

    .line 56
    .line 57
    invoke-static {v0, v1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/4 v1, 0x7

    .line 63
    invoke-static {v0, v1}, Le33;->b(Ljava/util/Date;I)Ljava/util/Date;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_5
    :goto_0
    return-object v0
.end method

.method public static synthetic copy$default(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;ILjava/lang/Object;)Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->copy(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic formatEndDate$default(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "yyyyMMdd"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->formatEndDate(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic formatStartDate$default(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "yyyyMMdd"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->formatStartDate(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic showDateString$default(Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, "MMM dd, yyyy"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->showDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/business/transfer/flow/internal/Period;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/internal/Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/internal/Period;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;)",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "period"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "filters"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3, p4}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final deepCopy()Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 12
    .line 13
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 16
    .line 17
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v4, v0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;-><init>(Lteam/opay/business/transfer/flow/internal/Period;Ljava/util/Date;Ljava/util/Date;Ljava/util/HashMap;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 43
    .line 44
    iget-object p1, p1, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public final formatEndDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->calculateEndDate()Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    :cond_1
    return-object p1
.end method

.method public final formatStartDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->calculateStartDate()Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lxa6;->a:Lxa6;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    :cond_1
    return-object p1
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFilters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPeriod()Lteam/opay/business/transfer/flow/internal/Period;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_1
    add-int/2addr v0, v2

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    return v0
.end method

.method public final setEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public final setFilters(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/api/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setPeriod(Lteam/opay/business/transfer/flow/internal/Period;)V
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/internal/Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 7
    .line 8
    return-void
.end method

.method public final setStartDate(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public final showDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "pattern"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/business/transfer/flow/internal/Period;->ALL_TIME:Lteam/opay/business/transfer/flow/internal/Period;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    const-string p1, "MMM dd, yyyy"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->formatStartDate(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->formatEndDate(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " - "

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    if-nez v0, :cond_4

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    sget-object v0, Lxa6;->a:Lxa6;

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Lxa6;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    :cond_2
    sget-object p1, Lxa6;->a:Lxa6;

    .line 62
    .line 63
    new-instance v0, Ljava/util/Date;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_3
    :goto_1
    return-object p1

    .line 73
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 74
    .line 75
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "Filter(period="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", startDate="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", endDate="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", filters="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->period:Lteam/opay/business/transfer/flow/internal/Period;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->startDate:Ljava/util/Date;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->endDate:Ljava/util/Date;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask$Filter;->filters:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lteam/opay/business/transfer/flow/api/CategoryInfo;

    .line 68
    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v2, 0x1

    .line 77
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1, p2}, Lteam/opay/business/transfer/flow/api/CategoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method
