.class public abstract Lteam/opay/pay/cashier/BaseCashierManager;
.super Ljava/lang/Object;
.source "BaseCashierManager.kt"

# interfaces
.implements Lcashier/CashierDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/BaseCashierManager$g;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ5\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0019H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ%\u0010\u001f\u001a\u00020\n2\u0014\u0010\u0013\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\n0\u0011H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J3\u0010%\u001a\u00020\n2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u00062\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\n0\u0011H\u0016\u00a2\u0006\u0004\u0008%\u0010&J+\u0010(\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\'2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\n0\u0011H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u001b\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060*H\u0016\u00a2\u0006\u0004\u0008+\u0010,R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010-\u001a\u0004\u0008.\u0010/R$\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R$\u00102\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00101R\u001b\u00108\u001a\u0002038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R0\u00109\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\n\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u00101\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010 \u00a8\u0006="
    }
    d2 = {
        "Lteam/opay/pay/cashier/BaseCashierManager;",
        "Lcashier/CashierDelegate;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "",
        "orderNo",
        "",
        "fromOWealth",
        "",
        "notifyAddMoney",
        "(Ljava/lang/String;Z)V",
        "Lcashier/PoolType;",
        "type",
        "Lcashier/PoolResponse;",
        "payPool",
        "Lkotlin/Function1;",
        "Lcashier/VerifyResult;",
        "callback",
        "openVerifyPool",
        "(Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;)V",
        "",
        "getSupportValidationTypes",
        "()Ljava/util/List;",
        "Lcashier/PayResult;",
        "payResult",
        "afterPayment",
        "(Lcashier/PayResult;)V",
        "onPaymentResult",
        "Ljavax/crypto/Cipher;",
        "showBiometricPay",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lcashier/SchemeType;",
        "schemeType",
        "scheme",
        "Lorg/json/JSONObject;",
        "openScheme",
        "(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "Lcashier/BindCardType;",
        "bindCardOrAccount",
        "(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V",
        "",
        "getVerifyPool",
        "()Ljava/util/Map;",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "verifyCallback",
        "Lkotlin/jvm/functions/Function1;",
        "addCardCallback",
        "Lteam/opay/pay/biometric/BiometricPromptManager;",
        "biometricManager$delegate",
        "Lid8;",
        "getBiometricManager",
        "()Lteam/opay/pay/biometric/BiometricPromptManager;",
        "biometricManager",
        "addMoneyCallback",
        "getAddMoneyCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setAddMoneyCallback",
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
.field private final activity:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private addCardCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addMoneyCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final biometricManager$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private verifyCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcashier/VerifyResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    new-instance v0, Lvo0;

    .line 12
    .line 13
    invoke-direct {v0}, Lvo0;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->biometricManager$delegate:Lid8;

    .line 21
    .line 22
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 23
    .line 24
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$a;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/BaseCashierManager$a;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "add_card_success_key"

    .line 30
    .line 31
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$b;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/BaseCashierManager$b;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "add_money_success_key"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$c;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/BaseCashierManager$c;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "on_owealth_success_key"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$d;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/BaseCashierManager$d;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "verify_pool_exit_key"

    .line 60
    .line 61
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$e;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/BaseCashierManager$e;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "pin_reset_success_key"

    .line 70
    .line 71
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$f;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/BaseCashierManager$f;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "verify_pool_result_key"

    .line 80
    .line 81
    invoke-virtual {v0, p1, v2, v1}, Lteam/opay/pay/util/FlowBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static final synthetic access$getAddCardCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->addCardCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->verifyCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAddCardCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager;->addCardCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setVerifyCallback$p(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager;->verifyCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/cashier/BaseCashierManager;->biometricManager_delegate$lambda$0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final biometricManager_delegate$lambda$0()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/biometric/BiometricPromptManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/BaseCashierManager;->showBiometricPay$lambda$1(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getBiometricManager()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->biometricManager$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final showBiometricPay$lambda$1(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getBiometricManager()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Lteam/opay/pay/biometric/BiometricPromptManager;->s(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getBiometricManager()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object p0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lteam/opay/pay/biometric/BiometricPromptManager;->c(Landroidx/fragment/app/FragmentActivity;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getBiometricManager()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 49
    .line 50
    new-instance v1, Lteam/opay/pay/cashier/BaseCashierManager$h;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lteam/opay/pay/cashier/BaseCashierManager$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x4

    .line 56
    invoke-virtual {p2, v0, p0, p1, v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->d(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILi77;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p0
.end method


# virtual methods
.method public abstract afterPayment(Lcashier/PayResult;)V
    .param p1    # Lcashier/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public bindCardOrAccount(Lcashier/BindCardType;Lkotlin/jvm/functions/Function1;)V
    .locals 13
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
    sget-object v0, Lcashier/BindCardType;->BIND_CARD:Lcashier/BindCardType;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const-string p1, "CARD"

    .line 16
    .line 17
    :goto_0
    move-object v8, p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string p1, "ACCOUNT"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance p1, Lteam/opay/pay/settings/BindCardData;

    .line 23
    .line 24
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    const/16 v11, 0x23e

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    const-string v1, "1"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v9, "checkout"

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v0, p1

    .line 40
    invoke-direct/range {v0 .. v12}, Lteam/opay/pay/settings/BindCardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lteam/opay/pay/settings/NewCardActivity;->g:Lteam/opay/pay/settings/NewCardActivity$Companion;

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/settings/NewCardActivity$Companion;->a(Landroid/content/Context;Lteam/opay/pay/settings/BindCardData;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager;->addCardCallback:Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    return-void
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddMoneyCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->addMoneyCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
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
    invoke-static {}, Lteam/opay/pay/account/verify/d;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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

.method public needCustomDialog(Lcashier/CustomDialogScene;Lkotlin/jvm/functions/Function1;)Z
    .locals 0
    .param p1    # Lcashier/CustomDialogScene;
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
            "Lcashier/CustomDialogScene;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcashier/CashierDelegate$a;->b(Lcashier/CashierDelegate;Lcashier/CustomDialogScene;Lkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract notifyAddMoney(Ljava/lang/String;Z)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public onPaymentResult(Lcashier/PayResult;)V
    .locals 1
    .param p1    # Lcashier/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "payResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/BaseCashierManager;->afterPayment(Lcashier/PayResult;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "schemeType = "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", scheme = "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lteam/opay/pay/cashier/BaseCashierManager$g;->b:[I

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v0, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v0, v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    if-eq v0, v1, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    invoke-static {v0, p2}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 61
    .line 62
    const-string v0, "otravel://balance_history/entrance"

    .line 63
    .line 64
    invoke-static {p2, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 69
    .line 70
    sget-object v0, Lcom/opay/team/home/pay/abfeatures/IndexConfigHostConfig;->Companion:Lcom/opay/team/home/pay/abfeatures/IndexConfigHostConfig$Companion;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/opay/team/home/pay/abfeatures/IndexConfigHostConfig$Companion;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, "/owealth"

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p2, v0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object p2, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 98
    .line 99
    invoke-static {p2}, Lkmf;->I(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    sget-object p2, Lcashier/SchemeType;->ADD_MONEY:Lcashier/SchemeType;

    .line 103
    .line 104
    if-ne p1, p2, :cond_3

    .line 105
    .line 106
    iput-object p3, p0, Lteam/opay/pay/cashier/BaseCashierManager;->addMoneyCallback:Lkotlin/jvm/functions/Function1;

    .line 107
    .line 108
    :cond_3
    return-void
.end method

.method public openVerifyPool(Lcashier/PoolType;Lcashier/PoolResponse;Lkotlin/jvm/functions/Function1;)V
    .locals 22
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "type"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "callback"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, v0, Lteam/opay/pay/cashier/BaseCashierManager;->verifyCallback:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    sget-object v2, Lteam/opay/pay/cashier/BaseCashierManager$g;->a:[I

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    aget v3, v2, v3

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    const/4 v5, 0x2

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v3, v6, :cond_2

    .line 31
    .line 32
    if-eq v3, v5, :cond_1

    .line 33
    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    sget-object v3, Lteam/opay/pay/account/verify/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 37
    .line 38
    :goto_0
    move-object v9, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 41
    .line 42
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    sget-object v3, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v3, Lteam/opay/pay/account/verify/ModifyType;->TRADE:Lteam/opay/pay/account/verify/ModifyType;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    aget v2, v2, v3

    .line 57
    .line 58
    if-eq v2, v6, :cond_5

    .line 59
    .line 60
    if-eq v2, v5, :cond_4

    .line 61
    .line 62
    if-ne v2, v4, :cond_3

    .line 63
    .line 64
    const-string v2, "dialog_set_payment_pin"

    .line 65
    .line 66
    :goto_2
    move-object v12, v2

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 69
    .line 70
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_4
    const-string v2, "payment_dialog_forget_payment_pin"

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const-string v2, "payment_trade"

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_3
    sget-object v2, Lcashier/PoolType;->TRADE:Lcashier/PoolType;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-ne v1, v2, :cond_8

    .line 84
    .line 85
    new-instance v1, Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 86
    .line 87
    if-eqz p2, :cond_6

    .line 88
    .line 89
    invoke-virtual/range {p2 .. p2}, Lcashier/PoolResponse;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v14, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-object v14, v3

    .line 96
    :goto_4
    if-eqz p2, :cond_7

    .line 97
    .line 98
    invoke-virtual/range {p2 .. p2}, Lcashier/PoolResponse;->a()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    :cond_7
    move-object/from16 v16, v3

    .line 103
    .line 104
    const/16 v20, 0x3a

    .line 105
    .line 106
    const/16 v21, 0x0

    .line 107
    .line 108
    const/4 v15, 0x0

    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    move-object v13, v1

    .line 116
    invoke-direct/range {v13 .. v21}, Lteam/opay/pay/account/verify/VerifyPoolResponse;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    move-object v10, v1

    .line 120
    goto :goto_5

    .line 121
    :cond_8
    move-object v10, v3

    .line 122
    :goto_5
    sget-object v7, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 123
    .line 124
    iget-object v8, v0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 125
    .line 126
    new-instance v1, Lteam/opay/core/settings/SettingsStorage;

    .line 127
    .line 128
    iget-object v2, v0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 129
    .line 130
    invoke-direct {v1, v2}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    const/16 v15, 0x60

    .line 138
    .line 139
    const/16 v16, 0x0

    .line 140
    .line 141
    const/4 v13, 0x0

    .line 142
    const/4 v14, 0x0

    .line 143
    invoke-static/range {v7 .. v16}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->k(Lteam/opay/pay/account/verify/VerifyActivity$Companion;Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Lteam/opay/pay/account/verify/VerifyPoolResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final setAddMoneyCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/BaseCashierManager;->addMoneyCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public showBiometricPay(Lkotlin/jvm/functions/Function1;)V
    .locals 4
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
    invoke-direct {p0}, Lteam/opay/pay/cashier/BaseCashierManager;->getBiometricManager()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/pay/cashier/BaseCashierManager;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Luo0;

    .line 23
    .line 24
    invoke-direct {v3, p0, p1}, Luo0;-><init>(Lteam/opay/pay/cashier/BaseCashierManager;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x4

    .line 28
    invoke-virtual {v0, v1, v2, p1, v3}, Lteam/opay/pay/biometric/BiometricPromptManager;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
