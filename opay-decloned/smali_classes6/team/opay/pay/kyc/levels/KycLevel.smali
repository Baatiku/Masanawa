.class public final Lteam/opay/pay/kyc/levels/KycLevel;
.super Ljava/lang/Object;
.source "KycLevelDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001f\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B\u0011\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010!R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008#\u0010\u0015R(\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008\u001d\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010)\u001a\u0004\u0008$\u0010*R\"\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010)\u001a\u0004\u0008+\u0010*\"\u0004\u0008,\u0010-R$\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010)\u001a\u0004\u0008/\u0010*\"\u0004\u00080\u0010-R$\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010)\u001a\u0004\u0008\"\u0010*\"\u0004\u00081\u0010-R$\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010)\u001a\u0004\u00083\u0010*\"\u0004\u00084\u0010-R$\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010)\u001a\u0004\u0008.\u0010*\"\u0004\u00085\u0010-R$\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010)\u001a\u0004\u00082\u0010*\"\u0004\u00086\u0010-R$\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010)\u001a\u0004\u00087\u0010*\"\u0004\u00088\u0010-\u00a8\u00069"
    }
    d2 = {
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "",
        "",
        "level",
        "role",
        "",
        "benefits",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "dailyVolumeMax",
        "walletBalanceMax",
        "singleOutAmountMax",
        "dailyOutAmountMax",
        "totalOutAmountMax",
        "singleInAmountMax",
        "totalInAmountMax",
        "weeklyOutAmountMax",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "kycLevel",
        "(Lteam/opay/pay/kyc/levels/KycLevel;)V",
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
        "Ljava/lang/String;",
        "d",
        "n",
        "(Ljava/lang/String;)V",
        "b",
        "e",
        "c",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "l",
        "(Ljava/util/List;)V",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "j",
        "s",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "f",
        "g",
        "p",
        "m",
        "h",
        "i",
        "r",
        "o",
        "q",
        "k",
        "t",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            ")V"
        }
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "benefits"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dailyVolumeMax"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletBalanceMax"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    iput-object p5, p0, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 7
    iput-object p6, p0, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    iput-object p7, p0, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 9
    iput-object p8, p0, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 10
    iput-object p9, p0, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 11
    iput-object p10, p0, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    iput-object p11, p0, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/kyc/levels/KycLevel;)V
    .locals 13
    .param p1    # Lteam/opay/pay/kyc/levels/KycLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "kycLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, p1, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

    .line 15
    iget-object v4, p1, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 16
    iget-object v5, p1, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 17
    iget-object v6, p1, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    iget-object v7, p1, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 19
    iget-object v8, p1, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 20
    iget-object v9, p1, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 21
    iget-object v10, p1, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 22
    iget-object v11, p1, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    iget-object v12, p1, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v12}, Lteam/opay/pay/kyc/levels/KycLevel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

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
    instance-of v1, p1, Lteam/opay/pay/kyc/levels/KycLevel;

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
    check-cast p1, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 124
    .line 125
    iget-object p1, p1, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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

.method public final f()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_0
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_1
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_2
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_3
    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 99
    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :goto_4
    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    .line 111
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 112
    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    :goto_5
    add-int/2addr v0, v2

    .line 121
    return v0
.end method

.method public final i()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final m(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final o(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final r(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 7
    .line 8
    return-void
.end method

.method public final t(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevel;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/levels/KycLevel;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/levels/KycLevel;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/kyc/levels/KycLevel;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/kyc/levels/KycLevel;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/kyc/levels/KycLevel;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/pay/kyc/levels/KycLevel;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/pay/kyc/levels/KycLevel;->h:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/pay/kyc/levels/KycLevel;->i:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/pay/kyc/levels/KycLevel;->j:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/pay/kyc/levels/KycLevel;->k:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 22
    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "KycLevel(level="

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
    const-string v0, ", benefits="

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
    const-string v0, ", dailyVolumeMax="

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
    const-string v0, ", walletBalanceMax="

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
    const-string v0, ", singleOutAmountMax="

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
    const-string v0, ", dailyOutAmountMax="

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
    const-string v0, ", totalOutAmountMax="

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
    const-string v0, ", singleInAmountMax="

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
    const-string v0, ", totalInAmountMax="

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
    const-string v0, ", weeklyOutAmountMax="

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
