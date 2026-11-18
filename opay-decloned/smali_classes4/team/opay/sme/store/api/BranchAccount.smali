.class public final Lteam/opay/sme/store/api/BranchAccount;
.super Ljava/lang/Object;
.source "ApiData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003JI\u0010\u0019\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/sme/store/api/BranchAccount;",
        "Ljava/io/Serializable;",
        "accountList",
        "",
        "Lteam/opay/sme/store/api/AccountInfo;",
        "availableBalance",
        "owealthBalance",
        "walletBalance",
        "showAccountListSize",
        "",
        "<init>",
        "(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;I)V",
        "getAccountList",
        "()Ljava/util/List;",
        "getAvailableBalance",
        "()Lteam/opay/sme/store/api/AccountInfo;",
        "getOwealthBalance",
        "getWalletBalance",
        "getShowAccountListSize",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "business-sme-store_release"
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
.field private final accountList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accountList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final availableBalance:Lteam/opay/sme/store/api/AccountInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final owealthBalance:Lteam/opay/sme/store/api/AccountInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "owealthBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final showAccountListSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showAccountListSize"
    .end annotation
.end field

.field private final walletBalance:Lteam/opay/sme/store/api/AccountInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/api/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/sme/store/api/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/sme/store/api/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AccountInfo;",
            ">;",
            "Lteam/opay/sme/store/api/AccountInfo;",
            "Lteam/opay/sme/store/api/AccountInfo;",
            "Lteam/opay/sme/store/api/AccountInfo;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 4
    iput-object p3, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 5
    iput-object p4, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 6
    iput p5, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct/range {v0 .. v5}, Lteam/opay/sme/store/api/BranchAccount;-><init>(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;I)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/sme/store/api/BranchAccount;Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;IILjava/lang/Object;)Lteam/opay/sme/store/api/BranchAccount;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    iget-object p3, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    iget-object p4, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    iget p5, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

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
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lteam/opay/sme/store/api/BranchAccount;->copy(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;I)Lteam/opay/sme/store/api/BranchAccount;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/sme/store/api/AccountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/sme/store/api/AccountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lteam/opay/sme/store/api/AccountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;I)Lteam/opay/sme/store/api/BranchAccount;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/sme/store/api/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/sme/store/api/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/sme/store/api/AccountInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AccountInfo;",
            ">;",
            "Lteam/opay/sme/store/api/AccountInfo;",
            "Lteam/opay/sme/store/api/AccountInfo;",
            "Lteam/opay/sme/store/api/AccountInfo;",
            "I)",
            "Lteam/opay/sme/store/api/BranchAccount;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lteam/opay/sme/store/api/BranchAccount;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lteam/opay/sme/store/api/BranchAccount;-><init>(Ljava/util/List;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;Lteam/opay/sme/store/api/AccountInfo;I)V

    .line 10
    .line 11
    .line 12
    return-object v6
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
    instance-of v1, p1, Lteam/opay/sme/store/api/BranchAccount;

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
    check-cast p1, Lteam/opay/sme/store/api/BranchAccount;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

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
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    iget v1, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

    .line 58
    .line 59
    iget p1, p1, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

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

.method public final getAccountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/AccountInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAvailableBalance()Lteam/opay/sme/store/api/AccountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOwealthBalance()Lteam/opay/sme/store/api/AccountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowAccountListSize()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWalletBalance()Lteam/opay/sme/store/api/AccountInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

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
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    invoke-virtual {v2}, Lteam/opay/sme/store/api/AccountInfo;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

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
    invoke-virtual {v2}, Lteam/opay/sme/store/api/AccountInfo;->hashCode()I

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
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2}, Lteam/opay/sme/store/api/AccountInfo;->hashCode()I

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
    iget v1, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

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
    iget-object v0, p0, Lteam/opay/sme/store/api/BranchAccount;->accountList:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/sme/store/api/BranchAccount;->availableBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/sme/store/api/BranchAccount;->owealthBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/sme/store/api/BranchAccount;->walletBalance:Lteam/opay/sme/store/api/AccountInfo;

    .line 8
    .line 9
    iget v4, p0, Lteam/opay/sme/store/api/BranchAccount;->showAccountListSize:I

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "BranchAccount(accountList="

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
    const-string v0, ", availableBalance="

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
    const-string v0, ", walletBalance="

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
