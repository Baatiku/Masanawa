.class public abstract Lteam/opay/pay/payment/ServiceViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ServiceViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/ServiceViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000 %2\u00020\u0001:\u0001&B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR,\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u001cj\u0002`\u001d8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0014\u0010$\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\r\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/payment/ServiceViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/e;)V",
        "",
        "t",
        "()V",
        "",
        "v",
        "()Ljava/lang/String;",
        "b",
        "Lteam/opay/core/api/e;",
        "",
        "c",
        "I",
        "statusPollingCounter",
        "Lteam/opay/pay/home/pay/Service;",
        "d",
        "Lteam/opay/pay/home/pay/Service;",
        "w",
        "()Lteam/opay/pay/home/pay/Service;",
        "y",
        "(Lteam/opay/pay/home/pay/Service;)V",
        "serviceInfo",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/android/validation/AmountValidationFn;",
        "e",
        "Lkotlin/jvm/functions/Function1;",
        "u",
        "()Lkotlin/jvm/functions/Function1;",
        "amountValidatorFn",
        "x",
        "transactionLimitMessage",
        "f",
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
.field public static final f:Lteam/opay/pay/payment/ServiceViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:I


# instance fields
.field public final b:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:Lteam/opay/pay/home/pay/Service;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lteam/opay/pay/payment/ServiceViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/ServiceViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/ServiceViewModel;->f:Lteam/opay/pay/payment/ServiceViewModel$Companion;

    .line 8
    .line 9
    const-wide/16 v0, 0x320

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x640

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-wide/16 v2, 0xc80

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-wide/16 v3, 0x1900

    .line 28
    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-wide/16 v4, 0x3200

    .line 34
    .line 35
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/16 v5, 0x8

    .line 40
    .line 41
    new-array v5, v5, [Ljava/lang/Long;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    aput-object v0, v5, v6

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    aput-object v1, v5, v0

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    aput-object v2, v5, v0

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    aput-object v3, v5, v0

    .line 54
    .line 55
    const/4 v0, 0x4

    .line 56
    aput-object v4, v5, v0

    .line 57
    .line 58
    const/4 v0, 0x5

    .line 59
    aput-object v4, v5, v0

    .line 60
    .line 61
    const/4 v0, 0x6

    .line 62
    aput-object v4, v5, v0

    .line 63
    .line 64
    const/4 v0, 0x7

    .line 65
    aput-object v4, v5, v0

    .line 66
    .line 67
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lteam/opay/pay/payment/ServiceViewModel;->g:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sput v0, Lteam/opay/pay/payment/ServiceViewModel;->h:I

    .line 78
    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/e;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/payment/ServiceViewModel;->b:Lteam/opay/core/api/e;

    .line 15
    .line 16
    new-instance p1, Llgd;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Llgd;-><init>(Lteam/opay/pay/payment/ServiceViewModel;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/payment/ServiceViewModel;->e:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/payment/ServiceViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/ServiceViewModel;->s(Lteam/opay/pay/payment/ServiceViewModel;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final s(Lteam/opay/pay/payment/ServiceViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, ""

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lteam/opay/pay/home/pay/Service;->h:Lteam/opay/pay/home/pay/Service$Companion;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/pay/payment/ServiceViewModel;->d:Lteam/opay/pay/home/pay/Service;

    .line 18
    .line 19
    sget-object v2, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 20
    .line 21
    iget-object v3, p0, Lteam/opay/pay/payment/ServiceViewModel;->b:Lteam/opay/core/api/e;

    .line 22
    .line 23
    invoke-interface {v3}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, p1, v3}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/home/pay/Service$Companion;->b(Lteam/opay/pay/home/pay/Service;Lteam/opay/core/android/money/MoneyAmount;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/payment/ServiceViewModel;->x()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final t()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lteam/opay/pay/payment/ServiceViewModel;->c:I

    .line 3
    .line 4
    return-void
.end method

.method public final u()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/ServiceViewModel;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lteam/opay/pay/R$string;->transaction_limit:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string/jumbo v3, "\u20a6100.00"

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v2, v4

    .line 21
    .line 22
    const-string/jumbo v3, "\u20a6999,999.00"

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v3, v2, v4

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "getString(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final w()Lteam/opay/pay/home/pay/Service;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/ServiceViewModel;->d:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/ServiceViewModel;->d:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/home/pay/Service;->h:Lteam/opay/pay/home/pay/Service$Companion;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lteam/opay/pay/payment/ServiceViewModel;->b:Lteam/opay/core/api/e;

    .line 12
    .line 13
    invoke-interface {v3}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v2, v0, v3}, Lteam/opay/pay/home/pay/Service$Companion;->a(Landroid/content/Context;Lteam/opay/pay/home/pay/Service;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/payment/ServiceViewModel;->v()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method

.method public final y(Lteam/opay/pay/home/pay/Service;)V
    .locals 0
    .param p1    # Lteam/opay/pay/home/pay/Service;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/ServiceViewModel;->d:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    return-void
.end method
