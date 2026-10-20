.class public final Lteam/opay/pay/cashier/CashDeskInput;
.super Ljava/lang/Object;
.source "CashDesk.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/cashier/CashDeskInput;",
        "Ljava/io/Serializable;",
        "orderInput",
        "Lteam/opay/pay/cashier/OrderInput;",
        "showStatePage",
        "",
        "pollingOrder",
        "paymentType",
        "Lteam/opay/pay/cashier/PaymentType;",
        "showMaskInfo",
        "<init>",
        "(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)V",
        "getOrderInput",
        "()Lteam/opay/pay/cashier/OrderInput;",
        "getShowStatePage",
        "()Z",
        "getPollingOrder",
        "getPaymentType",
        "()Lteam/opay/pay/cashier/PaymentType;",
        "getShowMaskInfo",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final orderInput:Lteam/opay/pay/cashier/OrderInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentType:Lteam/opay/pay/cashier/PaymentType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pollingOrder:Z

.field private final showMaskInfo:Z

.field private final showStatePage:Z


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)V
    .locals 1
    .param p1    # Lteam/opay/pay/cashier/OrderInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/cashier/PaymentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orderInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 3
    iput-boolean p2, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 4
    iput-boolean p3, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 5
    iput-object p4, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 6
    iput-boolean p5, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 7
    sget-object p4, Lteam/opay/pay/cashier/PaymentType;->UNKNOWN:Lteam/opay/pay/cashier/PaymentType;

    :cond_2
    move-object v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/cashier/CashDeskInput;-><init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/pay/cashier/CashDeskInput;Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;ZILjava/lang/Object;)Lteam/opay/pay/cashier/CashDeskInput;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-boolean p3, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

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
    iget-boolean p5, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move p4, p7

    .line 38
    move p5, v0

    .line 39
    move-object p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lteam/opay/pay/cashier/CashDeskInput;->copy(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)Lteam/opay/pay/cashier/CashDeskInput;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Lteam/opay/pay/cashier/OrderInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Lteam/opay/pay/cashier/PaymentType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)Lteam/opay/pay/cashier/CashDeskInput;
    .locals 7
    .param p1    # Lteam/opay/pay/cashier/OrderInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/cashier/PaymentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "orderInput"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paymentType"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/cashier/CashDeskInput;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p1

    .line 15
    move v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move v6, p5

    .line 19
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/cashier/CashDeskInput;-><init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;Z)V

    .line 20
    .line 21
    .line 22
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
    instance-of v1, p1, Lteam/opay/pay/cashier/CashDeskInput;

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
    check-cast p1, Lteam/opay/pay/cashier/CashDeskInput;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

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
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 39
    .line 40
    iget-object v3, p1, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    .line 46
    .line 47
    iget-boolean p1, p1, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    .line 48
    .line 49
    if-eq v1, p1, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    return v0
.end method

.method public final getOrderInput()Lteam/opay/pay/cashier/OrderInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPaymentType()Lteam/opay/pay/cashier/PaymentType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPollingOrder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShowMaskInfo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShowStatePage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInput;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 10
    .line 11
    invoke-static {v1}, Lii8;->a(Z)I

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
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 19
    .line 20
    invoke-static {v1}, Lii8;->a(Z)I

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
    iget-object v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

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
    iget-object v0, p0, Lteam/opay/pay/cashier/CashDeskInput;->orderInput:Lteam/opay/pay/cashier/OrderInput;

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/pay/cashier/CashDeskInput;->showStatePage:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/pay/cashier/CashDeskInput;->pollingOrder:Z

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/cashier/CashDeskInput;->paymentType:Lteam/opay/pay/cashier/PaymentType;

    .line 8
    .line 9
    iget-boolean v4, p0, Lteam/opay/pay/cashier/CashDeskInput;->showMaskInfo:Z

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "CashDeskInput(orderInput="

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
    const-string v0, ", showStatePage="

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
    const-string v0, ", pollingOrder="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", paymentType="

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
    const-string v0, ", showMaskInfo="

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
