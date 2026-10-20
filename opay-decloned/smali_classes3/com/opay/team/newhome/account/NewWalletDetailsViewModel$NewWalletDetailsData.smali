.class public final Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;
.super Ljava/lang/Object;
.source "NewWalletDetailsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/newhome/account/NewWalletDetailsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewWalletDetailsData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0016\u0010\u0018R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0019\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR*\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001e\u0010 \"\u0004\u0008!\u0010\"R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008#\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;",
        "",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "accountDetail",
        "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
        "banner",
        "",
        "Lteam/opay/pay/transaction/TransactionInfoV2;",
        "transactionList",
        "",
        "isLoading",
        "<init>",
        "(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;Ljava/util/List;Z)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "()Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
        "b",
        "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
        "()Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
        "e",
        "(Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;)V",
        "c",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "setTransactionList",
        "(Ljava/util/List;)V",
        "d",
        "Z",
        "()Z",
        "setLoading",
        "(Z)V",
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
.field public final a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/TransactionInfoV2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;",
            "Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;",
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/TransactionInfoV2;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/transaction/TransactionInfoV2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e(Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 2
    .line 3
    return-void
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
    instance-of v1, p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;

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
    check-cast p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

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
    iget-object v1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

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
    iget-object v1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->c:Ljava/util/List;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->c:Ljava/util/List;

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
    iget-boolean v1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->d:Z

    .line 47
    .line 48
    iget-boolean p1, p1, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->d:Z

    .line 49
    .line 50
    if-eq v1, p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

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
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

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
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;->hashCode()I

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
    iget-object v2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->c:Ljava/util/List;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->d:Z

    .line 40
    .line 41
    invoke-static {v1}, Lii8;->a(Z)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->a:Lcom/opay/team/newhome/bean/AccountBalanceDetailsData;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->b:Lteam/opay/core/api/graphql/NewWalletDetailsBannerData;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/opay/team/newhome/account/NewWalletDetailsViewModel$NewWalletDetailsData;->d:Z

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "NewWalletDetailsData(accountDetail="

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
    const-string v0, ", banner="

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
    const-string v0, ", transactionList="

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
    const-string v0, ", isLoading="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
