.class public final Lteam/opay/core/android/money/MoneyAmount;
.super Ljava/lang/Object;
.source "MoneyAmount.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/money/MoneyAmount$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 &2\u00020\u0001:\u0001&B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\u000bB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\rJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007J\u0011\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002J\u0011\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002J\u0011\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u00c2\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c2\u0003J)\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010!\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u00d6\u0003J\t\u0010$\u001a\u00020\u001cH\u00d6\u0001J\t\u0010%\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/core/android/money/MoneyAmount;",
        "Ljava/io/Serializable;",
        "amount",
        "Ljava/math/BigDecimal;",
        "currency",
        "Ljava/util/Currency;",
        "currencyCode",
        "",
        "<init>",
        "(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V",
        "currencyIsoCode",
        "(Ljava/math/BigDecimal;Ljava/lang/String;)V",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "(Ljava/math/BigDecimal;Lteam/opay/core/api/GraphQL$Currency;)V",
        "getAmount",
        "()Ljava/math/BigDecimal;",
        "positive",
        "",
        "getPositive",
        "()Z",
        "getCurrencyIsoCode",
        "()Ljava/lang/String;",
        "setCurrencyCode",
        "",
        "plus",
        "moneyAmount",
        "minus",
        "compareTo",
        "",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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
.field public static final Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final amount:Ljava/math/BigDecimal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currency:Ljava/util/Currency;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currencyCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/money/MoneyAmount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyIsoCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Li6e;->a(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, v0, p2}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Currency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 3
    iput-object p2, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 4
    iput-object p3, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    const-string p3, ""

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Lteam/opay/core/api/GraphQL$Currency;)V
    .locals 1
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$Currency;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    return-void
.end method

.method private final component2()Ljava/util/Currency;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 2
    .line 3
    return-object v0
.end method

.method private final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Lteam/opay/core/android/money/MoneyAmount;Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/core/android/money/MoneyAmount;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/android/money/MoneyAmount;->copy(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final compareTo(Lteam/opay/core/android/money/MoneyAmount;)I
    .locals 2
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "moneyAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 7
    .line 8
    iget-object v1, p1, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 19
    .line 20
    iget-object p1, p1, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-gez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_0
    return p1
.end method

.method public final component1()Ljava/math/BigDecimal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;
    .locals 1
    .param p1    # Ljava/math/BigDecimal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Currency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "amount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "currencyCode"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/money/MoneyAmount;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
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
    instance-of v1, p1, Lteam/opay/core/android/money/MoneyAmount;

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
    check-cast p1, Lteam/opay/core/android/money/MoneyAmount;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

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
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrencyIsoCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final getPositive()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 2
    .line 3
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final minus(Lteam/opay/core/android/money/MoneyAmount;)Lteam/opay/core/android/money/MoneyAmount;
    .locals 3
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "moneyAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/money/MoneyAmount;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 9
    .line 10
    iget-object p1, p1, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "subtract(...)"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, p1, v1, v2}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final plus(Lteam/opay/core/android/money/MoneyAmount;)Lteam/opay/core/android/money/MoneyAmount;
    .locals 3
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "moneyAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/money/MoneyAmount;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 9
    .line 10
    iget-object p1, p1, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "add(...)"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, p1, v1, v2}, Lteam/opay/core/android/money/MoneyAmount;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "currencyCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/money/MoneyAmount;->amount:Ljava/math/BigDecimal;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/android/money/MoneyAmount;->currency:Ljava/util/Currency;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/android/money/MoneyAmount;->currencyCode:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "MoneyAmount(amount="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", currency="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", currencyCode="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
