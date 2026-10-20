.class public final Lteam/opay/core/api/GraphQL$Campaign;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Campaign"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001b\u001a\u0004\u0008\u001f\u0010\u001dR\u001a\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001a\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$Campaign;",
        "",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceType",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amountMax",
        "amountMin",
        "Lteam/opay/core/api/GraphQL$Multiplier;",
        "multiplier",
        "",
        "active",
        "<init>",
        "(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$Multiplier;Z)V",
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
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "getServiceType",
        "()Lteam/opay/core/api/GraphQL$ServiceType;",
        "b",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "getAmountMax",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "c",
        "getAmountMin",
        "d",
        "Lteam/opay/core/api/GraphQL$Multiplier;",
        "getMultiplier",
        "()Lteam/opay/core/api/GraphQL$Multiplier;",
        "e",
        "Z",
        "getActive",
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
.field private final a:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amountMax"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amountMin"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lteam/opay/core/api/GraphQL$Multiplier;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiplier"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/api/GraphQL$ServiceType;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$Multiplier;Z)V
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/GraphQL$Multiplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serviceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "amountMax"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "amountMin"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "multiplier"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/core/api/GraphQL$Campaign;->a:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/core/api/GraphQL$Campaign;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/core/api/GraphQL$Campaign;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/core/api/GraphQL$Campaign;->d:Lteam/opay/core/api/GraphQL$Multiplier;

    .line 31
    .line 32
    iput-boolean p5, p0, Lteam/opay/core/api/GraphQL$Campaign;->e:Z

    .line 33
    .line 34
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
    instance-of v1, p1, Lteam/opay/core/api/GraphQL$Campaign;

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
    check-cast p1, Lteam/opay/core/api/GraphQL$Campaign;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->a:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Campaign;->a:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Campaign;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Campaign;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->d:Lteam/opay/core/api/GraphQL$Multiplier;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$Campaign;->d:Lteam/opay/core/api/GraphQL$Multiplier;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->e:Z

    .line 54
    .line 55
    iget-boolean p1, p1, Lteam/opay/core/api/GraphQL$Campaign;->e:Z

    .line 56
    .line 57
    if-eq v1, p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Campaign;->a:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->d:Lteam/opay/core/api/GraphQL$Multiplier;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Multiplier;->hashCode()I

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
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->e:Z

    .line 37
    .line 38
    invoke-static {v1}, Lii8;->a(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$Campaign;->a:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$Campaign;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/api/GraphQL$Campaign;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/api/GraphQL$Campaign;->d:Lteam/opay/core/api/GraphQL$Multiplier;

    .line 8
    .line 9
    iget-boolean v4, p0, Lteam/opay/core/api/GraphQL$Campaign;->e:Z

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "Campaign(serviceType="

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
    const-string v0, ", amountMax="

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
    const-string v0, ", amountMin="

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
    const-string v0, ", multiplier="

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
    const-string v0, ", active="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
