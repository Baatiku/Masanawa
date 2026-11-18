.class public final Lteam/opay/pay/cashier/newpayment/PaymentItem;
.super Ljava/lang/Object;
.source "NewPaymentData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0011R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010\u000f\"\u0004\u0008!\u0010\"R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/cashier/newpayment/PaymentItem;",
        "",
        "",
        "itemType",
        "",
        "select",
        "",
        "status",
        "Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;",
        "payChannelItem",
        "Lteam/opay/pay/cashier/Card;",
        "card",
        "<init>",
        "(IZLjava/lang/String;Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;Lteam/opay/pay/cashier/Card;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "I",
        "getItemType",
        "b",
        "Z",
        "getSelect",
        "()Z",
        "setSelect",
        "(Z)V",
        "c",
        "Ljava/lang/String;",
        "getStatus",
        "setStatus",
        "(Ljava/lang/String;)V",
        "d",
        "Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;",
        "getPayChannelItem",
        "()Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;",
        "setPayChannelItem",
        "(Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;)V",
        "e",
        "Lteam/opay/pay/cashier/Card;",
        "getCard",
        "()Lteam/opay/pay/cashier/Card;",
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
.field public final a:I

.field public b:Z

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/cashier/Card;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLjava/lang/String;Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;Lteam/opay/pay/cashier/Card;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/cashier/Card;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->a:I

    .line 10
    .line 11
    iput-boolean p2, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->b:Z

    .line 12
    .line 13
    iput-object p3, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->c:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->d:Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;

    .line 16
    .line 17
    iput-object p5, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->e:Lteam/opay/pay/cashier/Card;

    .line 18
    .line 19
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
    instance-of v1, p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;

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
    check-cast p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->a:I

    .line 14
    .line 15
    iget v3, p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->b:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;->b:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->d:Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;

    .line 39
    .line 40
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;->d:Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->e:Lteam/opay/pay/cashier/Card;

    .line 50
    .line 51
    iget-object p1, p1, Lteam/opay/pay/cashier/newpayment/PaymentItem;->e:Lteam/opay/pay/cashier/Card;

    .line 52
    .line 53
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->b:Z

    .line 6
    .line 7
    invoke-static {v1}, Lii8;->a(Z)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->d:Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->e:Lteam/opay/pay/cashier/Card;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1}, Lteam/opay/pay/cashier/Card;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_1
    add-int/2addr v0, v2

    .line 47
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->d:Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/cashier/newpayment/PaymentItem;->e:Lteam/opay/pay/cashier/Card;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "PaymentItem(itemType="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", select="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", status="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", payChannelItem="

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
    const-string v0, ", card="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
