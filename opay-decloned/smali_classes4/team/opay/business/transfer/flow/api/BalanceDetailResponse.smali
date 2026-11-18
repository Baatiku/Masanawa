.class public final Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;
.super Ljava/lang/Object;
.source "ApiData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u0017R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0017R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0017R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;",
        "",
        "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
        "availableBalance",
        "walletBalance",
        "owealthBalance",
        "",
        "accountList",
        "",
        "showAccountListSize",
        "<init>",
        "(Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Ljava/util/List;I)V",
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
        "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
        "()Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
        "b",
        "getWalletBalance",
        "c",
        "getOwealthBalance",
        "d",
        "Ljava/util/List;",
        "getAccountList",
        "()Ljava/util/List;",
        "e",
        "I",
        "getShowAccountListSize",
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
.field private final a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owealthBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accountList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showAccountListSize"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Ljava/util/List;I)V
    .locals 0
    .param p1    # Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
            "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
            "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/AccountTypeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->b:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 4
    iput-object p3, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->c:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 5
    iput-object p4, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->d:Ljava/util/List;

    .line 6
    iput p5, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;-><init>(Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Lteam/opay/business/transfer/flow/api/AccountTypeInfo;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/business/transfer/flow/api/AccountTypeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 2
    .line 3
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
    instance-of v1, p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;

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
    check-cast p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

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
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->b:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->b:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

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
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->c:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->c:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

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
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->d:Ljava/util/List;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->d:Ljava/util/List;

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
    iget v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->e:I

    .line 58
    .line 59
    iget p1, p1, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->e:I

    .line 60
    .line 61
    if-eq v1, p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

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
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/AccountTypeInfo;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->b:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

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
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/api/AccountTypeInfo;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->c:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/api/AccountTypeInfo;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->d:Ljava/util/List;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_3
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->e:I

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->a:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->b:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->c:Lteam/opay/business/transfer/flow/api/AccountTypeInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->d:Ljava/util/List;

    .line 8
    .line 9
    iget v4, p0, Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;->e:I

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "BalanceDetailResponse(availableBalance="

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
    const-string v0, ", walletBalance="

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
    const-string v0, ", owealthBalance="

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
    const-string v0, ", accountList="

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
    const-string v0, ", showAccountListSize="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
