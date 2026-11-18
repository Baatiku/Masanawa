.class public final Lteam/opay/pay/cashier/PaymentCashierImpl;
.super Ljava/lang/Object;
.source "PaymentCashierImpl.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/payment/IPaymentCashier;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/payment/IPaymentCashier;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JE\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JE\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/pay/cashier/PaymentCashierImpl;",
        "Lteam/opay/swarmfoundation/payment/IPaymentCashier;",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lteam/opay/swarmfoundation/payment/PayInput;",
        "paymentReq",
        "",
        "paymentAmount",
        "",
        "isShowStatePage",
        "pollingOrder",
        "La66;",
        "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
        "collector",
        "",
        "startPay",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public startPay(Landroidx/fragment/app/Fragment;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lteam/opay/swarmfoundation/payment/PayInput;",
            "Ljava/lang/String;",
            "ZZ",
            "La66<",
            "-",
            "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentReq"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentAmount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    const-string v1, "swarm_event_key_payment_result"

    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/utils/SwarmBus;->a(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    move-result-object v2

    const-string v3, "getViewLifecycleOwner(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v2, v1, p6}, Lteam/opay/swarmfoundation/utils/SwarmBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 4
    new-instance p6, Lteam/opay/pay/cashier/PaymentTask;

    invoke-direct {p6, p1}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 5
    sget-object p1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {p1, p3}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object p1

    .line 6
    invoke-virtual {p6, p2, p1, p4, p5}, Lteam/opay/pay/cashier/PaymentTask;->b(Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZ)V

    return-void
.end method

.method public startPay(Landroidx/fragment/app/FragmentActivity;Lteam/opay/swarmfoundation/payment/PayInput;Ljava/lang/String;ZZLa66;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/swarmfoundation/payment/PayInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La66;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/swarmfoundation/payment/PayInput;",
            "Ljava/lang/String;",
            "ZZ",
            "La66<",
            "-",
            "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragmentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentReq"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentAmount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    const-string v1, "swarm_event_key_payment_result"

    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/utils/SwarmBus;->a(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p1, v1, p6}, Lteam/opay/swarmfoundation/utils/SwarmBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 9
    new-instance p6, Lteam/opay/pay/cashier/PaymentTask;

    invoke-direct {p6, p1}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 10
    sget-object p1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {p1, p3}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object p1

    .line 11
    invoke-virtual {p6, p2, p1, p4, p5}, Lteam/opay/pay/cashier/PaymentTask;->b(Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZ)V

    return-void
.end method
