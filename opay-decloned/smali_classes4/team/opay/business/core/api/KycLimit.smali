.class public final Lteam/opay/business/core/api/KycLimit;
.super Ljava/lang/Object;
.source "ApiData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010\"\u001a\u00020#J\u0016\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000fH\u00c6\u0003J\u008f\u0001\u00102\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000fH\u00c6\u0001J\u0013\u00103\u001a\u00020#2\u0008\u00104\u001a\u0004\u0018\u000105H\u00d6\u0003J\t\u00106\u001a\u000207H\u00d6\u0001J\t\u00108\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016R&\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u00069"
    }
    d2 = {
        "Lteam/opay/business/core/api/KycLimit;",
        "Ljava/io/Serializable;",
        "level",
        "",
        "role",
        "singleInAmountMax",
        "Lteam/opay/core/common/amount/MoneyAmount;",
        "totalInAmountMax",
        "singleOutAmountMax",
        "dailyOutAmountMax",
        "totalOutAmountMax",
        "weeklyOutAmountMax",
        "walletBalanceMax",
        "dailyVolumeMax",
        "benefits",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Ljava/util/List;)V",
        "getLevel",
        "()Ljava/lang/String;",
        "getRole",
        "getSingleInAmountMax",
        "()Lteam/opay/core/common/amount/MoneyAmount;",
        "getTotalInAmountMax",
        "getSingleOutAmountMax",
        "getDailyOutAmountMax",
        "getTotalOutAmountMax",
        "getWeeklyOutAmountMax",
        "getWalletBalanceMax",
        "getDailyVolumeMax",
        "getBenefits",
        "()Ljava/util/List;",
        "setBenefits",
        "(Ljava/util/List;)V",
        "isAgent",
        "",
        "getAmountText",
        "amount",
        "defValue",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "business-core_release"
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
.field private benefits:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "benefits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dailyOutAmountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dailyVolumeMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final level:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final role:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "singleInAmountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "singleOutAmountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalInAmountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalOutAmountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletBalanceMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weeklyOutAmountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "level"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "role"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 19
    .line 20
    iput-object p4, p0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 21
    .line 22
    iput-object p5, p0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 23
    .line 24
    iput-object p6, p0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 25
    .line 26
    iput-object p7, p0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 27
    .line 28
    iput-object p8, p0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 29
    .line 30
    iput-object p9, p0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 31
    .line 32
    iput-object p10, p0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 33
    .line 34
    iput-object p11, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/business/core/api/KycLimit;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Ljava/util/List;ILjava/lang/Object;)Lteam/opay/business/core/api/KycLimit;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v5, p4

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 38
    .line 39
    if-eqz v6, :cond_4

    .line 40
    .line 41
    iget-object v6, v0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v6, p5

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 47
    .line 48
    if-eqz v7, :cond_5

    .line 49
    .line 50
    iget-object v7, v0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v7, p6

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 56
    .line 57
    if-eqz v8, :cond_6

    .line 58
    .line 59
    iget-object v8, v0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v8, p7

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 65
    .line 66
    if-eqz v9, :cond_7

    .line 67
    .line 68
    iget-object v9, v0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v9, p8

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 74
    .line 75
    if-eqz v10, :cond_8

    .line 76
    .line 77
    iget-object v10, v0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v10, p9

    .line 81
    .line 82
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 83
    .line 84
    if-eqz v11, :cond_9

    .line 85
    .line 86
    iget-object v11, v0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 87
    .line 88
    goto :goto_9

    .line 89
    :cond_9
    move-object/from16 v11, p10

    .line 90
    .line 91
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 92
    .line 93
    if-eqz v1, :cond_a

    .line 94
    .line 95
    iget-object v1, v0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 96
    .line 97
    goto :goto_a

    .line 98
    :cond_a
    move-object/from16 v1, p11

    .line 99
    .line 100
    :goto_a
    move-object p1, v2

    .line 101
    move-object p2, v3

    .line 102
    move-object p3, v4

    .line 103
    move-object/from16 p4, v5

    .line 104
    .line 105
    move-object/from16 p5, v6

    .line 106
    .line 107
    move-object/from16 p6, v7

    .line 108
    .line 109
    move-object/from16 p7, v8

    .line 110
    .line 111
    move-object/from16 p8, v9

    .line 112
    .line 113
    move-object/from16 p9, v10

    .line 114
    .line 115
    move-object/from16 p10, v11

    .line 116
    .line 117
    move-object/from16 p11, v1

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p11}, Lteam/opay/business/core/api/KycLimit;->copy(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Ljava/util/List;)Lteam/opay/business/core/api/KycLimit;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Ljava/util/List;)Lteam/opay/business/core/api/KycLimit;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Lteam/opay/core/common/amount/MoneyAmount;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lteam/opay/business/core/api/KycLimit;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "level"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "role"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lteam/opay/business/core/api/KycLimit;

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    move-object/from16 v4, p3

    .line 17
    .line 18
    move-object/from16 v5, p4

    .line 19
    .line 20
    move-object/from16 v6, p5

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    move-object/from16 v8, p7

    .line 25
    .line 26
    move-object/from16 v9, p8

    .line 27
    .line 28
    move-object/from16 v10, p9

    .line 29
    .line 30
    move-object/from16 v11, p10

    .line 31
    .line 32
    move-object/from16 v12, p11

    .line 33
    .line 34
    invoke-direct/range {v1 .. v12}, Lteam/opay/business/core/api/KycLimit;-><init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Lteam/opay/core/common/amount/MoneyAmount;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
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
    instance-of v1, p1, Lteam/opay/business/core/api/KycLimit;

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
    check-cast p1, Lteam/opay/business/core/api/KycLimit;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

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
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

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
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

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
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 124
    .line 125
    iget-object p1, p1, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 126
    .line 127
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    return v0
.end method

.method public final getAmountText(Lteam/opay/core/common/amount/MoneyAmount;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Lteam/opay/core/common/amount/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "defValue"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/common/amount/MoneyAmount;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    const/high16 v2, 0x5f000000

    .line 31
    .line 32
    cmpl-float v2, v0, v2

    .line 33
    .line 34
    if-ltz v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    cmpl-float v0, v0, v1

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    const-string p2, ""

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :cond_2
    :goto_1
    return-object p2
.end method

.method public final getBenefits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDailyOutAmountMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDailyVolumeMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLevel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRole()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSingleInAmountMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSingleOutAmountMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalInAmountMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalOutAmountMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWalletBalanceMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWeeklyOutAmountMax()Lteam/opay/core/common/amount/MoneyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_1
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_2
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :goto_3
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 72
    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_4
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 85
    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_5
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 98
    .line 99
    if-nez v1, :cond_6

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    goto :goto_6

    .line 103
    :cond_6
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :goto_6
    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    .line 110
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 111
    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    goto :goto_7

    .line 116
    :cond_7
    invoke-virtual {v1}, Lteam/opay/core/common/amount/MoneyAmount;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    :goto_7
    add-int/2addr v0, v1

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    .line 122
    .line 123
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 124
    .line 125
    if-nez v1, :cond_8

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    :goto_8
    add-int/2addr v0, v2

    .line 133
    return v0
.end method

.method public final isAgent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "agent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final setBenefits(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/core/api/KycLimit;->level:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/core/api/KycLimit;->role:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/core/api/KycLimit;->singleInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/core/api/KycLimit;->totalInAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/core/api/KycLimit;->singleOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/business/core/api/KycLimit;->dailyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/business/core/api/KycLimit;->totalOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/business/core/api/KycLimit;->weeklyOutAmountMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/business/core/api/KycLimit;->walletBalanceMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/business/core/api/KycLimit;->dailyVolumeMax:Lteam/opay/core/common/amount/MoneyAmount;

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/business/core/api/KycLimit;->benefits:Ljava/util/List;

    .line 22
    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "KycLimit(level="

    .line 29
    .line 30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", role="

    .line 37
    .line 38
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", singleInAmountMax="

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
    const-string v0, ", totalInAmountMax="

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
    const-string v0, ", singleOutAmountMax="

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
    const-string v0, ", dailyOutAmountMax="

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
    const-string v0, ", totalOutAmountMax="

    .line 77
    .line 78
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", weeklyOutAmountMax="

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
    const-string v0, ", walletBalanceMax="

    .line 93
    .line 94
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", dailyVolumeMax="

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
    const-string v0, ", benefits="

    .line 109
    .line 110
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
