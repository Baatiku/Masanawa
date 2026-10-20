.class public final Lteam/opay/pay/home/pay/Service$Companion;
.super Ljava/lang/Object;
.source "Service.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/pay/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/home/pay/Service$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/home/pay/Service;",
        "serviceInfo",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "moneyAmount",
        "",
        "b",
        "(Lteam/opay/pay/home/pay/Service;Lteam/opay/core/android/money/MoneyAmount;)Z",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/core/api/Country;",
        "country",
        "",
        "a",
        "(Landroid/content/Context;Lteam/opay/pay/home/pay/Service;Lteam/opay/core/api/Country;)Ljava/lang/String;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/pay/Service$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lteam/opay/pay/home/pay/Service;Lteam/opay/core/api/Country;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/pay/Service;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "serviceInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "country"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget v0, Lteam/opay/pay/R$string;->transaction_limit:I

    .line 14
    .line 15
    sget-object v1, Lbd9;->a:Lbd9;

    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2, p3}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v1, p2, p3}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 p3, 0x2

    .line 42
    new-array p3, p3, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aput-object v2, p3, v1

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    aput-object p2, p3, v1

    .line 49
    .line 50
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    :cond_0
    const-string p1, ""

    .line 57
    .line 58
    :cond_1
    return-object p1
.end method

.method public final b(Lteam/opay/pay/home/pay/Service;Lteam/opay/core/android/money/MoneyAmount;)Z
    .locals 3
    .param p1    # Lteam/opay/pay/home/pay/Service;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "moneyAmount"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 21
    .line 22
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 23
    .line 24
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "100"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    :cond_2
    sget-object p1, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 49
    .line 50
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 51
    .line 52
    invoke-virtual {v1}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "999999"

    .line 57
    .line 58
    invoke-virtual {p1, v2, v1}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_3
    invoke-virtual {v0, p2}, Lteam/opay/core/android/money/MoneyAmount;->compareTo(Lteam/opay/core/android/money/MoneyAmount;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gtz v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lteam/opay/core/android/money/MoneyAmount;->compareTo(Lteam/opay/core/android/money/MoneyAmount;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-gez p1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 p1, 0x0

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 78
    :goto_1
    return p1
.end method
