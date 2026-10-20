.class public final Lteam/opay/core/api/Wallet;
.super Ljava/lang/Object;
.source "Wallet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u0018R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0016\u001a\u0004\u0008\u001e\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0016\u001a\u0004\u0008 \u0010\u0018R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/core/api/Wallet;",
        "",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "balance",
        "bonusBalance",
        "ajiraBalance",
        "owealthAmount",
        "couponsTotalAmount",
        "",
        "couponsCount",
        "<init>",
        "(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;I)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "getBalance",
        "()Lteam/opay/core/android/money/MoneyAmount;",
        "b",
        "getBonusBalance",
        "c",
        "getAjiraBalance",
        "d",
        "getOwealthAmount",
        "e",
        "getCouponsTotalAmount",
        "f",
        "I",
        "getCouponsCount",
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
.field public final a:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lteam/opay/core/android/money/MoneyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;I)V
    .locals 1
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "balance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bonusBalance"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ajiraBalance"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "couponsTotalAmount"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/core/api/Wallet;->a:Lteam/opay/core/android/money/MoneyAmount;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/core/api/Wallet;->b:Lteam/opay/core/android/money/MoneyAmount;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/core/api/Wallet;->c:Lteam/opay/core/android/money/MoneyAmount;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/core/api/Wallet;->d:Lteam/opay/core/android/money/MoneyAmount;

    .line 31
    .line 32
    iput-object p5, p0, Lteam/opay/core/api/Wallet;->e:Lteam/opay/core/android/money/MoneyAmount;

    .line 33
    .line 34
    iput p6, p0, Lteam/opay/core/api/Wallet;->f:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lteam/opay/core/api/Wallet;

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
    check-cast p1, Lteam/opay/core/api/Wallet;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->a:Lteam/opay/core/android/money/MoneyAmount;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/api/Wallet;->a:Lteam/opay/core/android/money/MoneyAmount;

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
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->b:Lteam/opay/core/android/money/MoneyAmount;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/api/Wallet;->b:Lteam/opay/core/android/money/MoneyAmount;

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
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->c:Lteam/opay/core/android/money/MoneyAmount;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/api/Wallet;->c:Lteam/opay/core/android/money/MoneyAmount;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->d:Lteam/opay/core/android/money/MoneyAmount;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/api/Wallet;->d:Lteam/opay/core/android/money/MoneyAmount;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->e:Lteam/opay/core/android/money/MoneyAmount;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/core/api/Wallet;->e:Lteam/opay/core/android/money/MoneyAmount;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget v1, p0, Lteam/opay/core/api/Wallet;->f:I

    .line 69
    .line 70
    iget p1, p1, Lteam/opay/core/api/Wallet;->f:I

    .line 71
    .line 72
    if-eq v1, p1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/Wallet;->a:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/android/money/MoneyAmount;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->b:Lteam/opay/core/android/money/MoneyAmount;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/android/money/MoneyAmount;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->c:Lteam/opay/core/android/money/MoneyAmount;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/android/money/MoneyAmount;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->d:Lteam/opay/core/android/money/MoneyAmount;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lteam/opay/core/android/money/MoneyAmount;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->e:Lteam/opay/core/android/money/MoneyAmount;

    .line 41
    .line 42
    invoke-virtual {v1}, Lteam/opay/core/android/money/MoneyAmount;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget v1, p0, Lteam/opay/core/api/Wallet;->f:I

    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/Wallet;->a:Lteam/opay/core/android/money/MoneyAmount;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/api/Wallet;->b:Lteam/opay/core/android/money/MoneyAmount;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/api/Wallet;->c:Lteam/opay/core/android/money/MoneyAmount;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/api/Wallet;->d:Lteam/opay/core/android/money/MoneyAmount;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/api/Wallet;->e:Lteam/opay/core/android/money/MoneyAmount;

    .line 10
    .line 11
    iget v5, p0, Lteam/opay/core/api/Wallet;->f:I

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "Wallet(balance="

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
    const-string v0, ", bonusBalance="

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
    const-string v0, ", ajiraBalance="

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
    const-string v0, ", owealthAmount="

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
    const-string v0, ", couponsTotalAmount="

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
    const-string v0, ", couponsCount="

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
