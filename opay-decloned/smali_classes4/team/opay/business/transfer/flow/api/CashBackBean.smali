.class public final Lteam/opay/business/transfer/flow/api/CashBackBean;
.super Ljava/lang/Object;
.source "ApiData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/api/CashBackBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001cB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u0017R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0018\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "",
        "",
        "cardType",
        "Lteam/opay/business/transfer/flow/api/CashBackItem;",
        "cashbackItem",
        "Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;",
        "cashbackMonthTitle",
        "<init>",
        "(ILteam/opay/business/transfer/flow/api/CashBackItem;Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;)V",
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
        "I",
        "b",
        "Lteam/opay/business/transfer/flow/api/CashBackItem;",
        "()Lteam/opay/business/transfer/flow/api/CashBackItem;",
        "c",
        "Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;",
        "()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;",
        "d",
        "Companion",
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


# static fields
.field public static final d:Lteam/opay/business/transfer/flow/api/CashBackBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardType"
    .end annotation
.end field

.field private final b:Lteam/opay/business/transfer/flow/api/CashBackItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashbackItem"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashbackMonthTitle"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/api/CashBackBean$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/api/CashBackBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/transfer/flow/api/CashBackBean;->d:Lteam/opay/business/transfer/flow/api/CashBackBean$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILteam/opay/business/transfer/flow/api/CashBackItem;Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;)V
    .locals 0
    .param p2    # Lteam/opay/business/transfer/flow/api/CashBackItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->a:I

    .line 3
    iput-object p2, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->b:Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 4
    iput-object p3, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    return-void
.end method

.method public synthetic constructor <init>(ILteam/opay/business/transfer/flow/api/CashBackItem;Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/api/CashBackBean;-><init>(ILteam/opay/business/transfer/flow/api/CashBackItem;Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lteam/opay/business/transfer/flow/api/CashBackItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->b:Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

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
    instance-of v1, p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

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
    check-cast p1, Lteam/opay/business/transfer/flow/api/CashBackBean;

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->a:I

    .line 14
    .line 15
    iget v3, p1, Lteam/opay/business/transfer/flow/api/CashBackBean;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->b:Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 21
    .line 22
    iget-object v3, p1, Lteam/opay/business/transfer/flow/api/CashBackBean;->b:Lteam/opay/business/transfer/flow/api/CashBackItem;

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
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 32
    .line 33
    iget-object p1, p1, Lteam/opay/business/transfer/flow/api/CashBackBean;->c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->b:Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/CashBackItem;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_1
    add-int/2addr v0, v2

    .line 29
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->b:Lteam/opay/business/transfer/flow/api/CashBackItem;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/transfer/flow/api/CashBackBean;->c:Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "CashBackBean(cardType="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", cashbackItem="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", cashbackMonthTitle="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
