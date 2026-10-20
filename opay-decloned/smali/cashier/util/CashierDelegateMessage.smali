.class public final Lcashier/util/CashierDelegateMessage;
.super Ljava/lang/Object;
.source "CashierBus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000c\u001a\u0004\u0008\u0008\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcashier/util/CashierDelegateMessage;",
        "",
        "Lteam/opay/swarmfoundation/payment/PayInput;",
        "input",
        "Lcashier/CashierDelegate;",
        "delegate",
        "<init>",
        "(Lteam/opay/swarmfoundation/payment/PayInput;Lcashier/CashierDelegate;)V",
        "a",
        "Lteam/opay/swarmfoundation/payment/PayInput;",
        "b",
        "()Lteam/opay/swarmfoundation/payment/PayInput;",
        "Lcashier/CashierDelegate;",
        "()Lcashier/CashierDelegate;",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lteam/opay/swarmfoundation/payment/PayInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcashier/CashierDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/swarmfoundation/payment/PayInput;Lcashier/CashierDelegate;)V
    .locals 1
    .param p1    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/CashierDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "delegate"

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
    iput-object p1, p0, Lcashier/util/CashierDelegateMessage;->a:Lteam/opay/swarmfoundation/payment/PayInput;

    .line 15
    .line 16
    iput-object p2, p0, Lcashier/util/CashierDelegateMessage;->b:Lcashier/CashierDelegate;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcashier/CashierDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/util/CashierDelegateMessage;->b:Lcashier/CashierDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/swarmfoundation/payment/PayInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/util/CashierDelegateMessage;->a:Lteam/opay/swarmfoundation/payment/PayInput;

    .line 2
    .line 3
    return-object v0
.end method
