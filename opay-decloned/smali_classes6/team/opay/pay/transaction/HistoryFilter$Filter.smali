.class public final Lteam/opay/pay/transaction/HistoryFilter$Filter;
.super Ljava/lang/Object;
.source "HistoryFilter.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/HistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transaction/HistoryFilter$Filter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000eB\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000fB%\u0008\u0016\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0010B-\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0011J\u0006\u0010\u001b\u001a\u00020\tJ\u0006\u0010\u001c\u001a\u00020\tJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\tH\u00c6\u0003JC\u0010%\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010&\u001a\u00020\u001e2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00d6\u0003J\t\u0010)\u001a\u00020*H\u00d6\u0001J\t\u0010+\u001a\u00020,H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001f\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "Ljava/io/Serializable;",
        "category",
        "Lteam/opay/pay/transaction/FilterTypeInfo;",
        "status",
        "Lteam/opay/pay/transaction/HistoryFilter$Status;",
        "period",
        "Lteam/opay/pay/transaction/HistoryFilter$Period;",
        "startDate",
        "Ljava/util/Date;",
        "endDate",
        "<init>",
        "(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V",
        "filter",
        "(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "(Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "(Ljava/util/Date;Ljava/util/Date;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "(Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "getCategory",
        "()Lteam/opay/pay/transaction/FilterTypeInfo;",
        "getStatus",
        "()Lteam/opay/pay/transaction/HistoryFilter$Status;",
        "getPeriod",
        "()Lteam/opay/pay/transaction/HistoryFilter$Period;",
        "getStartDate",
        "()Ljava/util/Date;",
        "getEndDate",
        "calculateStartDate",
        "calculateEndDate",
        "isFilter",
        "",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final category:Lteam/opay/pay/transaction/FilterTypeInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final endDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isFilter:Z

.field private final period:Lteam/opay/pay/transaction/HistoryFilter$Period;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final startDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final status:Lteam/opay/pay/transaction/HistoryFilter$Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V
    .locals 7
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transaction/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v2, p3, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 22
    iget-object v3, p3, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 23
    iget-object v4, p3, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    .line 24
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V
    .locals 7
    .param p1    # Lteam/opay/pay/transaction/FilterTypeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 12
    iget-object v4, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 13
    iget-object v5, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 14
    iget-object v6, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    move-object v1, p0

    move-object v2, p1

    .line 15
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1    # Lteam/opay/pay/transaction/FilterTypeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/HistoryFilter$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transaction/HistoryFilter$Period;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 6
    iput-object p4, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 7
    iput-object p5, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/transaction/FilterTypeInfo;->c()Lteam/opay/pay/transaction/CategoryType;

    move-result-object p1

    sget-object p4, Lteam/opay/pay/transaction/CategoryType;->ALL:Lteam/opay/pay/transaction/CategoryType;

    if-ne p1, p4, :cond_2

    :cond_0
    sget-object p1, Lteam/opay/pay/transaction/HistoryFilter$Status;->ANY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    if-ne p2, p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->isFilter:Z

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 9
    sget-object p2, Lteam/opay/pay/transaction/HistoryFilter$Status;->ANY:Lteam/opay/pay/transaction/HistoryFilter$Status;

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, p4

    :goto_2
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_3

    :cond_4
    move-object p6, p5

    :goto_3
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 10
    invoke-direct/range {p1 .. p6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V
    .locals 7
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$Period;
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
    .param p4    # Lteam/opay/pay/transaction/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v2, p4, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 26
    iget-object v3, p4, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 27
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Filter;)V
    .locals 7
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v2, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 17
    iget-object v4, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 18
    iget-object v5, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 19
    iget-object v6, p2, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    move-object v1, p0

    move-object v3, p1

    .line 20
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/transaction/HistoryFilter$Filter;Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lteam/opay/pay/transaction/HistoryFilter$Filter;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lteam/opay/pay/transaction/HistoryFilter$Filter;->copy(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final calculateEndDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/util/Date;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final calculateStartDate()Ljava/util/Date;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v2, Lteam/opay/pay/transaction/HistoryFilter$Filter$a;->a:[I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget v1, v2, v1

    .line 19
    .line 20
    :goto_0
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v1, v2, :cond_6

    .line 23
    .line 24
    if-eq v1, v3, :cond_5

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    const/4 v4, 0x5

    .line 28
    if-eq v1, v2, :cond_4

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    .line 33
    const/16 v2, 0xb

    .line 34
    .line 35
    if-eq v1, v4, :cond_1

    .line 36
    .line 37
    invoke-static {v0, v2}, Lf33;->f(Ljava/util/Date;I)Ljava/util/Date;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    invoke-static {v0, v2}, Lf33;->f(Ljava/util/Date;I)Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v0, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-static {v0, v3}, Lf33;->f(Ljava/util/Date;I)Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    invoke-static {v0, v4}, Lf33;->f(Ljava/util/Date;I)Ljava/util/Date;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    invoke-static {v0, v3}, Lf33;->f(Ljava/util/Date;I)Ljava/util/Date;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    invoke-static {v0, v3}, Lf33;->f(Ljava/util/Date;I)Ljava/util/Date;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    return-object v0
.end method

.method public final component1()Lteam/opay/pay/transaction/FilterTypeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/pay/transaction/HistoryFilter$Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/pay/transaction/HistoryFilter$Period;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)Lteam/opay/pay/transaction/HistoryFilter$Filter;
    .locals 7
    .param p1    # Lteam/opay/pay/transaction/FilterTypeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/HistoryFilter$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transaction/HistoryFilter$Period;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/transaction/HistoryFilter$Filter;-><init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lteam/opay/pay/transaction/HistoryFilter$Status;Lteam/opay/pay/transaction/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    .line 15
    .line 16
    .line 17
    return-object v0
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
    instance-of v1, p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;

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
    check-cast p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 39
    .line 40
    iget-object v3, p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 50
    .line 51
    iget-object p1, p1, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 52
    .line 53
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final getCategory()Lteam/opay/pay/transaction/FilterTypeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPeriod()Lteam/opay/pay/transaction/HistoryFilter$Period;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Lteam/opay/pay/transaction/HistoryFilter$Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/transaction/FilterTypeInfo;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_3
    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public final isFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->isFilter:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->category:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->status:Lteam/opay/pay/transaction/HistoryFilter$Status;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->period:Lteam/opay/pay/transaction/HistoryFilter$Period;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/transaction/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "Filter(category="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", status="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", period="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", startDate="

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", endDate="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
