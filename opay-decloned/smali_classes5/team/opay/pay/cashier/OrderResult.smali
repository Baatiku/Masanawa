.class public final Lteam/opay/pay/cashier/OrderResult;
.super Ljava/lang/Object;
.source "Order.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000cR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/cashier/OrderResult;",
        "",
        "Lteam/opay/pay/cashier/OrderStatus;",
        "status",
        "",
        "code",
        "",
        "close",
        "<init>",
        "(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "a",
        "Lteam/opay/pay/cashier/OrderStatus;",
        "()Lteam/opay/pay/cashier/OrderStatus;",
        "b",
        "Ljava/lang/String;",
        "getCode",
        "()Ljava/lang/String;",
        "c",
        "Ljava/lang/Boolean;",
        "getClose",
        "()Ljava/lang/Boolean;",
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
.field public final a:Lteam/opay/pay/cashier/OrderStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Lteam/opay/pay/cashier/OrderStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/cashier/OrderResult;->a:Lteam/opay/pay/cashier/OrderStatus;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/cashier/OrderResult;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/cashier/OrderResult;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/cashier/OrderResult;-><init>(Lteam/opay/pay/cashier/OrderStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/cashier/OrderStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/OrderResult;->a:Lteam/opay/pay/cashier/OrderStatus;

    .line 2
    .line 3
    return-object v0
.end method
