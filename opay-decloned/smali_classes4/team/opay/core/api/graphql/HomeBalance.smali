.class public final Lteam/opay/core/api/graphql/HomeBalance;
.super Ljava/lang/Object;
.source "Api.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u001f\u0008\u0086\u0008\u0018\u00002\u00020\u0001B}\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001a\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001e\u001a\u0004\u0008\u001d\u0010 R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008#\u0010 R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010$\u001a\u0004\u0008%\u0010&R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010\'\u001a\u0004\u0008(\u0010)R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008\u000c\u0010,R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u0010\u001cR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00080\u0010+\u001a\u0004\u0008\u000f\u0010,R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00081\u0010.\u001a\u0004\u00082\u0010\u001cR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00083\u0010\u001e\u001a\u0004\u0008\"\u0010 R\u001a\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u0008!\u00106\u00a8\u00067"
    }
    d2 = {
        "Lteam/opay/core/api/graphql/HomeBalance;",
        "",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "totalBalance",
        "availableBalance",
        "savingsBalance",
        "Lteam/opay/core/api/graphql/WalletAccountBalance;",
        "walletAccount",
        "",
        "Lteam/opay/core/api/graphql/FinancialAccountBalance;",
        "financialAccount",
        "",
        "isReceivedBonus",
        "",
        "rewardEntryText",
        "isHasSavingsInvestRecord",
        "savingsInvestText",
        "todayTotalInterest",
        "hasReceivedInterest",
        "<init>",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/graphql/WalletAccountBalance;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "toString",
        "()Ljava/lang/String;",
        "a",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "d",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "b",
        "c",
        "getSavingsBalance",
        "Lteam/opay/core/api/graphql/WalletAccountBalance;",
        "e",
        "()Lteam/opay/core/api/graphql/WalletAccountBalance;",
        "Ljava/util/List;",
        "getFinancialAccount",
        "()Ljava/util/List;",
        "f",
        "Ljava/lang/Boolean;",
        "()Ljava/lang/Boolean;",
        "g",
        "Ljava/lang/String;",
        "getRewardEntryText",
        "h",
        "i",
        "getSavingsInvestText",
        "j",
        "k",
        "Z",
        "()Z",
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
.field private final a:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "savingsBalance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lteam/opay/core/api/graphql/WalletAccountBalance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "financialAccount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/FinancialAccountBalance;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isReceivedBonus"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewardEntryText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isHasSavingsInvestRecord"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "savingsInvestText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "todayTotalInterest"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasReceivedInterest"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/graphql/WalletAccountBalance;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/graphql/WalletAccountBalance;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/graphql/WalletAccountBalance;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/FinancialAccountBalance;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/api/graphql/HomeBalance;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 3
    iput-object p2, p0, Lteam/opay/core/api/graphql/HomeBalance;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    iput-object p3, p0, Lteam/opay/core/api/graphql/HomeBalance;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 5
    iput-object p4, p0, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 6
    iput-object p5, p0, Lteam/opay/core/api/graphql/HomeBalance;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lteam/opay/core/api/graphql/HomeBalance;->f:Ljava/lang/Boolean;

    .line 8
    iput-object p7, p0, Lteam/opay/core/api/graphql/HomeBalance;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lteam/opay/core/api/graphql/HomeBalance;->h:Ljava/lang/Boolean;

    .line 10
    iput-object p9, p0, Lteam/opay/core/api/graphql/HomeBalance;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lteam/opay/core/api/graphql/HomeBalance;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    iput-boolean p11, p0, Lteam/opay/core/api/graphql/HomeBalance;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/graphql/WalletAccountBalance;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p10

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    move/from16 v13, p11

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 13
    invoke-direct/range {v2 .. v13}, Lteam/opay/core/api/graphql/HomeBalance;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/graphql/WalletAccountBalance;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lteam/opay/core/api/graphql/WalletAccountBalance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object v2, v1

    .line 14
    :goto_0
    const-class v3, Lteam/opay/core/api/graphql/HomeBalance;

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    const-string v2, "null cannot be cast to non-null type team.opay.core.api.graphql.HomeBalance"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lteam/opay/core/api/graphql/HomeBalance;

    .line 30
    .line 31
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move-object v2, v1

    .line 47
    :goto_1
    iget-object v4, p1, Lteam/opay/core/api/graphql/HomeBalance;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    move-object v4, v1

    .line 63
    :goto_2
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    return v3

    .line 70
    :cond_5
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    move-object v2, v1

    .line 86
    :goto_3
    iget-object v4, p1, Lteam/opay/core/api/graphql/HomeBalance;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 87
    .line 88
    if-eqz v4, :cond_7

    .line 89
    .line 90
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_4

    .line 101
    :cond_7
    move-object v4, v1

    .line 102
    :goto_4
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    return v3

    .line 109
    :cond_8
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 110
    .line 111
    if-eqz v2, :cond_9

    .line 112
    .line 113
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_9

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_5

    .line 124
    :cond_9
    move-object v2, v1

    .line 125
    :goto_5
    iget-object v4, p1, Lteam/opay/core/api/graphql/HomeBalance;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 126
    .line 127
    if-eqz v4, :cond_a

    .line 128
    .line 129
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_a

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_6

    .line 140
    :cond_a
    move-object v4, v1

    .line 141
    :goto_6
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_b

    .line 146
    .line 147
    return v3

    .line 148
    :cond_b
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 149
    .line 150
    if-eqz v2, :cond_c

    .line 151
    .line 152
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/WalletAccountBalance;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_c

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    goto :goto_7

    .line 169
    :cond_c
    move-object v2, v1

    .line 170
    :goto_7
    iget-object v4, p1, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 171
    .line 172
    if-eqz v4, :cond_d

    .line 173
    .line 174
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/WalletAccountBalance;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-eqz v4, :cond_d

    .line 179
    .line 180
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-eqz v4, :cond_d

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    goto :goto_8

    .line 191
    :cond_d
    move-object v4, v1

    .line 192
    :goto_8
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_e

    .line 197
    .line 198
    return v3

    .line 199
    :cond_e
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 200
    .line 201
    if-eqz v2, :cond_f

    .line 202
    .line 203
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/WalletAccountBalance;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_f

    .line 208
    .line 209
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-eqz v2, :cond_f

    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    goto :goto_9

    .line 220
    :cond_f
    move-object v2, v1

    .line 221
    :goto_9
    iget-object v4, p1, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 222
    .line 223
    if-eqz v4, :cond_10

    .line 224
    .line 225
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/WalletAccountBalance;->c()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-eqz v4, :cond_10

    .line 230
    .line 231
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    if-eqz v4, :cond_10

    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :cond_10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_11

    .line 246
    .line 247
    return v3

    .line 248
    :cond_11
    iget-object v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->f:Ljava/lang/Boolean;

    .line 249
    .line 250
    iget-object v2, p1, Lteam/opay/core/api/graphql/HomeBalance;->f:Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_12

    .line 257
    .line 258
    return v3

    .line 259
    :cond_12
    iget-object v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->g:Ljava/lang/String;

    .line 260
    .line 261
    iget-object v2, p1, Lteam/opay/core/api/graphql/HomeBalance;->g:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_13

    .line 268
    .line 269
    return v3

    .line 270
    :cond_13
    iget-object v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->h:Ljava/lang/Boolean;

    .line 271
    .line 272
    iget-object v2, p1, Lteam/opay/core/api/graphql/HomeBalance;->h:Ljava/lang/Boolean;

    .line 273
    .line 274
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_14

    .line 279
    .line 280
    return v3

    .line 281
    :cond_14
    iget-object v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->i:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v2, p1, Lteam/opay/core/api/graphql/HomeBalance;->i:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_15

    .line 290
    .line 291
    return v3

    .line 292
    :cond_15
    iget-object v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 293
    .line 294
    iget-object v2, p1, Lteam/opay/core/api/graphql/HomeBalance;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 295
    .line 296
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_16

    .line 301
    .line 302
    return v3

    .line 303
    :cond_16
    iget-boolean v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->k:Z

    .line 304
    .line 305
    iget-boolean p1, p1, Lteam/opay/core/api/graphql/HomeBalance;->k:Z

    .line 306
    .line 307
    if-eq v1, p1, :cond_17

    .line 308
    .line 309
    return v3

    .line 310
    :cond_17
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 v2, 0x0

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/WalletAccountBalance;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const/4 v2, 0x0

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->f:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    const/4 v2, 0x0

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->g:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    const/4 v2, 0x0

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->h:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    const/4 v2, 0x0

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->i:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_7

    .line 101
    :cond_7
    const/4 v2, 0x0

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 106
    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    :cond_8
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    .line 116
    iget-boolean v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->k:Z

    .line 117
    .line 118
    invoke-static {v1}, Lii8;->a(Z)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr v0, v1

    .line 123
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/graphql/HomeBalance;->a:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/api/graphql/HomeBalance;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/api/graphql/HomeBalance;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/api/graphql/HomeBalance;->d:Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/api/graphql/HomeBalance;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/api/graphql/HomeBalance;->f:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/core/api/graphql/HomeBalance;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/core/api/graphql/HomeBalance;->h:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/core/api/graphql/HomeBalance;->i:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/core/api/graphql/HomeBalance;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 20
    .line 21
    iget-boolean v10, p0, Lteam/opay/core/api/graphql/HomeBalance;->k:Z

    .line 22
    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "HomeBalance(totalBalance="

    .line 29
    .line 30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", availableBalance="

    .line 37
    .line 38
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", savingsBalance="

    .line 45
    .line 46
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", walletAccount="

    .line 53
    .line 54
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", financialAccount="

    .line 61
    .line 62
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", isReceivedBonus="

    .line 69
    .line 70
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", rewardEntryText="

    .line 77
    .line 78
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", isHasSavingsInvestRecord="

    .line 85
    .line 86
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", savingsInvestText="

    .line 93
    .line 94
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", todayTotalInterest="

    .line 101
    .line 102
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", hasReceivedInterest="

    .line 109
    .line 110
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ")"

    .line 117
    .line 118
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
