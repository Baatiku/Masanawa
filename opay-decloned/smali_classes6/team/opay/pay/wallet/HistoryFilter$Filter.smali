.class public final Lteam/opay/pay/wallet/HistoryFilter$Filter;
.super Ljava/lang/Object;
.source "HistoryFilter.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/wallet/HistoryFilter$Filter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001BI\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0011B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0012B\u0019\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0013B\u0019\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0014B%\u0008\u0016\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\r\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0015\u0010\u001b\u001a\n \u001a*\u0004\u0018\u00010\n0\n\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\r\u0010\u001e\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J\r\u0010\u001f\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0018J\u0010\u0010 \u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008 \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010&\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008&\u0010\'J\u0012\u0010(\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008(\u0010\u001cJ\u0012\u0010)\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008)\u0010\u001cJR\u0010*\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010,\u001a\u00020\u0016H\u00d6\u0001\u00a2\u0006\u0004\u0008,\u0010\u0018J\u0010\u0010.\u001a\u00020-H\u00d6\u0001\u00a2\u0006\u0004\u0008.\u0010/J\u001a\u00103\u001a\u0002022\u0008\u00101\u001a\u0004\u0018\u000100H\u00d6\u0003\u00a2\u0006\u0004\u00083\u00104R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u00105\u001a\u0004\u00086\u0010!R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u00107\u001a\u0004\u00088\u0010#R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u00109\u001a\u0004\u0008:\u0010%R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010;\u001a\u0004\u0008<\u0010\'R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010=\u001a\u0004\u0008>\u0010\u001cR\u0019\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010=\u001a\u0004\u0008?\u0010\u001c\u00a8\u0006@"
    }
    d2 = {
        "team/opay/pay/wallet/HistoryFilter$Filter",
        "Ljava/io/Serializable;",
        "Lteam/opay/pay/wallet/HistoryFilter$Category;",
        "category",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "businessCategory",
        "Lteam/opay/pay/wallet/HistoryFilter$Status;",
        "status",
        "Lteam/opay/pay/wallet/HistoryFilter$Period;",
        "period",
        "Ljava/util/Date;",
        "startDate",
        "endDate",
        "<init>",
        "(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V",
        "Lteam/opay/pay/wallet/HistoryFilter$Filter;",
        "filter",
        "(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V",
        "(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V",
        "(Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V",
        "(Lteam/opay/pay/wallet/HistoryFilter$Period;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V",
        "(Ljava/util/Date;Ljava/util/Date;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V",
        "",
        "getEndDateString",
        "()Ljava/lang/String;",
        "getStartDateString",
        "kotlin.jvm.PlatformType",
        "calculateStartDate",
        "()Ljava/util/Date;",
        "calculateEndDate",
        "getStartTimestamp",
        "getEndTimestamp",
        "component1",
        "()Lteam/opay/pay/wallet/HistoryFilter$Category;",
        "component2",
        "()Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "component3",
        "()Lteam/opay/pay/wallet/HistoryFilter$Status;",
        "component4",
        "()Lteam/opay/pay/wallet/HistoryFilter$Period;",
        "component5",
        "component6",
        "copy",
        "(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)Lteam/opay/pay/wallet/HistoryFilter$Filter;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lteam/opay/pay/wallet/HistoryFilter$Category;",
        "getCategory",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "getBusinessCategory",
        "Lteam/opay/pay/wallet/HistoryFilter$Status;",
        "getStatus",
        "Lteam/opay/pay/wallet/HistoryFilter$Period;",
        "getPeriod",
        "Ljava/util/Date;",
        "getStartDate",
        "getEndDate",
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
.field private final businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final category:Lteam/opay/pay/wallet/HistoryFilter$Category;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final endDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final period:Lteam/opay/pay/wallet/HistoryFilter$Period;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startDate:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final status:Lteam/opay/pay/wallet/HistoryFilter$Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V
    .locals 8
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/wallet/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v2, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 37
    iget-object v3, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 38
    iget-object v4, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 39
    sget-object v5, Lteam/opay/pay/wallet/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/wallet/HistoryFilter$Period;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    .line 40
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V
    .locals 8
    .param p1    # Lteam/opay/pay/wallet/HistoryFilter$Category;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$BusinessCategory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/wallet/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCategory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v4, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 20
    iget-object v5, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 21
    iget-object v6, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 22
    iget-object v7, p3, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 23
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1    # Lteam/opay/pay/wallet/HistoryFilter$Category;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$BusinessCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/wallet/HistoryFilter$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/wallet/HistoryFilter$Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "period"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 6
    iput-object p4, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 7
    iput-object p5, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 8
    iput-object p6, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 9
    sget-object p1, Lteam/opay/pay/wallet/HistoryFilter$Category;->ALL_CETEGORIES:Lteam/opay/pay/wallet/HistoryFilter$Category;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move-object p8, v0

    goto :goto_0

    :cond_1
    move-object p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    .line 10
    sget-object p3, Lteam/opay/pay/wallet/HistoryFilter$Status;->ANY:Lteam/opay/pay/wallet/HistoryFilter$Status;

    :cond_2
    move-object v1, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    .line 11
    sget-object p4, Lteam/opay/pay/wallet/HistoryFilter$Period;->ALL_TIME:Lteam/opay/pay/wallet/HistoryFilter$Period;

    :cond_3
    move-object v2, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, p5

    :goto_1
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p6

    :goto_2
    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v1

    move-object p6, v2

    move-object p7, v3

    move-object p8, v0

    .line 12
    invoke-direct/range {p2 .. p8}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V
    .locals 8
    .param p1    # Lteam/opay/pay/wallet/HistoryFilter$Category;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/wallet/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 14
    iget-object v4, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 15
    iget-object v5, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 16
    iget-object v6, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 17
    iget-object v7, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    move-object v1, p0

    move-object v2, p1

    .line 18
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/wallet/HistoryFilter$Period;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V
    .locals 8
    .param p1    # Lteam/opay/pay/wallet/HistoryFilter$Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/wallet/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "period"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v2, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 31
    iget-object v3, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 32
    iget-object v4, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 33
    sget-object v0, Lteam/opay/pay/wallet/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/wallet/HistoryFilter$Period;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v5, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 34
    iget-object p2, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    move-object v7, p2

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    move-object v1, p0

    move-object v5, p1

    .line 35
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Filter;)V
    .locals 8
    .param p1    # Lteam/opay/pay/wallet/HistoryFilter$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/wallet/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v2, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 25
    iget-object v3, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 26
    iget-object v5, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 27
    iget-object v6, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 28
    iget-object v7, p2, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    move-object v1, p0

    move-object v4, p1

    .line 29
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/wallet/HistoryFilter$Filter;Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)Lteam/opay/pay/wallet/HistoryFilter$Filter;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 12
    .line 13
    :cond_1
    move-object p8, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p7, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    move-object p2, p0

    .line 43
    move-object p3, p1

    .line 44
    move-object p4, p8

    .line 45
    move-object p5, v0

    .line 46
    move-object p6, v1

    .line 47
    move-object p7, v2

    .line 48
    move-object p8, v3

    .line 49
    invoke-virtual/range {p2 .. p8}, Lteam/opay/pay/wallet/HistoryFilter$Filter;->copy(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)Lteam/opay/pay/wallet/HistoryFilter$Filter;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final calculateEndDate()Ljava/util/Date;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->ALL_TIME:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final calculateStartDate()Ljava/util/Date;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 7
    .line 8
    sget-object v2, Lteam/opay/pay/wallet/HistoryFilter$Filter$a;->a:[I

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
    const/4 v3, 0x2

    .line 20
    if-eq v1, v3, :cond_3

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    if-eq v1, v3, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq v1, v0, :cond_0

    .line 27
    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/16 v1, 0x776

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {v0}, Lf33;->g(Ljava/util/Date;)Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 52
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/16 v1, 0x1e

    .line 60
    .line 61
    invoke-static {v0, v1}, Lf33;->c(Ljava/util/Date;I)Ljava/util/Date;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/16 v1, 0xe

    .line 67
    .line 68
    invoke-static {v0, v1}, Lf33;->c(Ljava/util/Date;I)Ljava/util/Date;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 v1, 0x7

    .line 74
    invoke-static {v0, v1}, Lf33;->c(Ljava/util/Date;I)Ljava/util/Date;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_0
    return-object v0
.end method

.method public final component1()Lteam/opay/pay/wallet/HistoryFilter$Category;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/pay/wallet/HistoryFilter$Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lteam/opay/pay/wallet/HistoryFilter$Period;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)Lteam/opay/pay/wallet/HistoryFilter$Filter;
    .locals 8
    .param p1    # Lteam/opay/pay/wallet/HistoryFilter$Category;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$BusinessCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/wallet/HistoryFilter$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/wallet/HistoryFilter$Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "category"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "status"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "period"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/pay/wallet/HistoryFilter$Filter;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    move-object v5, p4

    .line 23
    move-object v6, p5

    .line 24
    move-object v7, p6

    .line 25
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/wallet/HistoryFilter$Filter;-><init>(Lteam/opay/pay/wallet/HistoryFilter$Category;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/pay/wallet/HistoryFilter$Status;Lteam/opay/pay/wallet/HistoryFilter$Period;Ljava/util/Date;Ljava/util/Date;)V

    .line 26
    .line 27
    .line 28
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
    instance-of v1, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;

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
    check-cast p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 28
    .line 29
    iget-object v3, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 35
    .line 36
    iget-object v3, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 42
    .line 43
    iget-object v3, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 44
    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 53
    .line 54
    iget-object p1, p1, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 55
    .line 56
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    return v0
.end method

.method public final getBusinessCategory()Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategory()Lteam/opay/pay/wallet/HistoryFilter$Category;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEndDateString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/wallet/HistoryFilter$Period;->CUSTOM:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v0}, Lf33;->d(Ljava/util/Date;)Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    int-to-long v2, v2

    .line 23
    div-long/2addr v0, v2

    .line 24
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_2
    return-object v0
.end method

.method public final getEndTimestamp()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/HistoryFilter$Filter;->calculateEndDate()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final getPeriod()Lteam/opay/pay/wallet/HistoryFilter$Period;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStartDateString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/HistoryFilter$Filter;->calculateStartDate()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final getStartTimestamp()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/HistoryFilter$Filter;->calculateStartDate()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final getStatus()Lteam/opay/pay/wallet/HistoryFilter$Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

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
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

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
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_1
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_2
    add-int/2addr v0, v2

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->category:Lteam/opay/pay/wallet/HistoryFilter$Category;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->businessCategory:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->status:Lteam/opay/pay/wallet/HistoryFilter$Status;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->period:Lteam/opay/pay/wallet/HistoryFilter$Period;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->startDate:Ljava/util/Date;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/wallet/HistoryFilter$Filter;->endDate:Ljava/util/Date;

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "Filter(category="

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", businessCategory="

    .line 27
    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", status="

    .line 35
    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", period="

    .line 43
    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", startDate="

    .line 51
    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", endDate="

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ")"

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
