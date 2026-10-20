.class public final Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;
.super Ljava/lang/Object;
.source "ApiData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0016\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u001cR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001d\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;",
        "",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "incomeAmount",
        "outAmount",
        "",
        "month",
        "",
        "Lteam/opay/business/transfer/flow/api/CashBackItem;",
        "transactionFlowDTOS",
        "<init>",
        "(Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;JLjava/util/List;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "()Lteam/opay/core/common/amount/MoneyAmount;",
        "b",
        "c",
        "J",
        "()J",
        "d",
        "Ljava/util/List;",
        "()Ljava/util/List;",
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


# instance fields
.field private final a:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "incomeAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionFlowDTOS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/CashBackItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;JLjava/util/List;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "J",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/CashBackItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a:Lteam/opay/core/common/amount/MoneyAmount;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b:Lteam/opay/core/common/amount/MoneyAmount;

    .line 7
    .line 8
    iput-wide p3, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/CashBackItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;

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
    check-cast p1, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a:Lteam/opay/core/common/amount/MoneyAmount;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a:Lteam/opay/core/common/amount/MoneyAmount;

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
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b:Lteam/opay/core/common/amount/MoneyAmount;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b:Lteam/opay/core/common/amount/MoneyAmount;

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
    iget-wide v3, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c:J

    .line 36
    .line 37
    iget-wide v5, p1, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d:Ljava/util/List;

    .line 45
    .line 46
    iget-object p1, p1, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a:Lteam/opay/core/common/amount/MoneyAmount;

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
    invoke-virtual {v0}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b:Lteam/opay/core/common/amount/MoneyAmount;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v2, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c:J

    .line 28
    .line 29
    invoke-static {v2, v3}, Lv3b;->a(J)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d:Ljava/util/List;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_2
    add-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->a:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->b:Lteam/opay/core/common/amount/MoneyAmount;

    .line 4
    .line 5
    iget-wide v2, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->c:J

    .line 6
    .line 7
    iget-object v4, p0, Lteam/opay/business/transfer/flow/api/CashBackMonthSummery;->d:Ljava/util/List;

    .line 8
    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v6, "CashBackMonthSummery(incomeAmount="

    .line 15
    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", outAmount="

    .line 23
    .line 24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", month="

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", transactionFlowDTOS="

    .line 39
    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
