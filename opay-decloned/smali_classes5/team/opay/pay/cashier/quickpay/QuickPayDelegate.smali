.class public final Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;
.super Lcashier/AbstractQuickPayDelegate;
.source "QuickPayDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lcashier/AbstractQuickPayDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\n\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ3\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\r2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J5\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ%\u0010\u001f\u001a\u00020\u00082\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;",
        "Lcashier/AbstractQuickPayDelegate;",
        "<init>",
        "()V",
        "Lcashier/BindCardType;",
        "type",
        "Lkotlin/Function1;",
        "Lorg/json/JSONObject;",
        "",
        "callback",
        "bindCardOrAccount",
        "(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V",
        "",
        "",
        "getSupportValidationTypes",
        "()Ljava/util/List;",
        "Lcashier/SchemeType;",
        "schemeType",
        "scheme",
        "openScheme",
        "(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "",
        "getVerifyPool",
        "()Ljava/util/Map;",
        "Lcashier/PoolType;",
        "Lcashier/PoolResponse;",
        "payPool",
        "Lcashier/VerifyResult;",
        "openVerifyPool",
        "(Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;)V",
        "Ljavax/crypto/Cipher;",
        "showBiometricPay",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/pay/cashier/quickpay/QuickPayManager;",
        "paymentManager$delegate",
        "Lid8;",
        "getPaymentManager",
        "()Lteam/opay/pay/cashier/quickpay/QuickPayManager;",
        "paymentManager",
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
.field private final paymentManager$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcashier/AbstractQuickPayDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lybc;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lybc;-><init>(Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->paymentManager$delegate:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)Lteam/opay/pay/cashier/quickpay/QuickPayManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->paymentManager_delegate$lambda$0(Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getPaymentManager()Lteam/opay/pay/cashier/quickpay/QuickPayManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->paymentManager$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final paymentManager_delegate$lambda$0(Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)Lteam/opay/pay/cashier/quickpay/QuickPayManager;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcashier/AbstractQuickPayDelegate;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0}, Lteam/opay/pay/cashier/quickpay/QuickPayManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public bindCardOrAccount(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcashier/BindCardType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/BindCardType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->getPaymentManager()Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager;->bindCardOrAccount(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getSupportValidationTypes()Ljava/util/List;
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
    invoke-direct {p0}, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->getPaymentManager()Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/BaseCashierManager;->getSupportValidationTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getVerifyPool()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/tabs/MtnTestABTest;->Companion:Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;->a(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "1"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "0"

    .line 23
    .line 24
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lteam/opay/pay/account/verify/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcashier/SchemeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/SchemeType;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "schemeType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scheme"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->getPaymentManager()Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/cashier/BaseCashierManager;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public openVerifyPool(Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcashier/PoolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/PoolResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/PoolType;",
            "Lcashier/PoolResponse;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcashier/VerifyResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->getPaymentManager()Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/pay/cashier/BaseCashierManager;->openVerifyPool(Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public showBiometricPay(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljavax/crypto/Cipher;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/cashier/quickpay/QuickPayDelegate;->getPaymentManager()Lteam/opay/pay/cashier/quickpay/QuickPayManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/BaseCashierManager;->showBiometricPay(Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
