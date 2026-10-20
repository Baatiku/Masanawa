.class public final Lteam/opay/pay/cashier/PaymentActivity;
.super Lteam/opay/pay/cashier/Hilt_PaymentActivity;
.source "PaymentActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/PaymentActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\"\u0010)\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/cashier/PaymentActivity;",
        "Lteam/opay/pay/cashier/BasePaymentActivity;",
        "<init>",
        "()V",
        "",
        "init",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "",
        "info",
        "Q",
        "(Ljava/lang/String;)V",
        "R",
        "Lteam/opay/pay/cashier/CashDeskInput;",
        "input",
        "",
        "M",
        "(Lteam/opay/pay/cashier/CashDeskInput;)Z",
        "orderNo",
        "link",
        "N",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lsi8;",
        "g",
        "Lid8;",
        "getManager",
        "()Lsi8;",
        "manager",
        "Landroid/content/IntentFilter;",
        "h",
        "Landroid/content/IntentFilter;",
        "intentFilter",
        "i",
        "Z",
        "getNeedPaddingTop",
        "()Z",
        "setNeedPaddingTop",
        "(Z)V",
        "needPaddingTop",
        "j",
        "Companion",
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


# static fields
.field public static final j:Lteam/opay/pay/cashier/PaymentActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/content/IntentFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PaymentActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/PaymentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/PaymentActivity;->j:Lteam/opay/pay/cashier/PaymentActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/Hilt_PaymentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfeb;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lfeb;-><init>(Lteam/opay/pay/cashier/PaymentActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/cashier/PaymentActivity;->g:Lid8;

    .line 14
    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "team.opay.pay.broadcastPaymentClear"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lteam/opay/pay/cashier/PaymentActivity;->h:Landroid/content/IntentFilter;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic L(Lteam/opay/pay/cashier/PaymentActivity;)Lsi8;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/PaymentActivity;->P(Lteam/opay/pay/cashier/PaymentActivity;)Lsi8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/cashier/PaymentActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/PaymentActivity;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final P(Lteam/opay/pay/cashier/PaymentActivity;)Lsi8;
    .locals 0

    .line 1
    invoke-static {p0}, Lsi8;->b(Landroid/content/Context;)Lsi8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "info"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "info = "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lteam/opay/pay/cashier/PaymentActivity;->Q(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaymentActivity;->R()V

    .line 46
    .line 47
    .line 48
    :goto_2
    return-void
.end method


# virtual methods
.method public final M(Lteam/opay/pay/cashier/CashDeskInput;)Z
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->e()Lteam/opay/pay/cashier/OrderInput;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getOrderNo()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->e()Lteam/opay/pay/cashier/OrderInput;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInput;->getOrderNo()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_2
    invoke-virtual {p1}, Lteam/opay/pay/cashier/CashDeskInput;->getOrderInput()Lteam/opay/pay/cashier/OrderInput;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInput;->getOrderNo()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->V0(Lteam/opay/pay/cashier/CashDeskInput;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->j0()Lteam/opay/pay/cashier/CashDeskInput;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lteam/opay/pay/cashier/CashDeskInput;->getOrderInput()Lteam/opay/pay/cashier/OrderInput;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->X0(Lteam/opay/pay/cashier/OrderInput;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    return p1
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "v6"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->T0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->a1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/cashier/CashierSdkManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lteam/opay/pay/cashier/CashierSdkManager;-><init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/cashier/PaySheetViewModel;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getServiceType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getServiceId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getVoucherId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lteam/opay/pay/cashier/OrderInput;->getBusinessType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->j0()Lteam/opay/pay/cashier/CashDeskInput;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lteam/opay/pay/cashier/CashDeskInput;->getShowMaskInfo()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    new-instance v1, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 87
    .line 88
    const/16 v11, 0x80

    .line 89
    .line 90
    const/4 v12, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    move-object v2, v1

    .line 93
    move-object v4, p1

    .line 94
    move-object v7, p2

    .line 95
    invoke-direct/range {v2 .. v12}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/CashierSdkManager;->openCashier(Lteam/opay/swarmfoundation/payment/PayInput;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lteam/opay/pay/cashier/H5PayInput;

    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/pay/cashier/H5PayInput;

    .line 13
    .line 14
    new-instance v9, Lteam/opay/pay/cashier/CashDeskInput;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lohb;->b(Lteam/opay/pay/cashier/H5PayInput;)Lteam/opay/pay/cashier/OrderInput;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/16 v7, 0x8

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    move-object v1, v9

    .line 31
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/cashier/CashDeskInput;-><init>(Lteam/opay/pay/cashier/OrderInput;ZZLteam/opay/pay/cashier/PaymentType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v9}, Lteam/opay/pay/cashier/PaymentActivity;->M(Lteam/opay/pay/cashier/CashDeskInput;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    move-object p1, v1

    .line 47
    :cond_0
    :try_start_1
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v2, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 55
    .line 56
    const-string v3, "browserScheme"

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "showResult"

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v5, "skipSecond"

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-direct {v2, v3, v4, v0}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;-><init>(Ljava/lang/String;ZI)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->Y0(Lteam/opay/pay/cashier/result/OutPaySchemeInfo;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInput;->getOrderNo()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p1

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 112
    :goto_0
    if-nez v0, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    move-object v1, v0

    .line 116
    :goto_1
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/cashier/PaymentActivity;->N(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lteam/opay/pay/cashier/PaymentActivity;->R()V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_3
    return-void
.end method

.method public final R()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "team.opay.pay.paymentInput"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lteam/opay/pay/cashier/CashDeskInput;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lteam/opay/pay/cashier/CashDeskInput;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lteam/opay/pay/cashier/PaymentActivity;->M(Lteam/opay/pay/cashier/CashDeskInput;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->c0()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/cashier/OrderInput;->getOrderNo()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-static {p0, v0, v2, v1, v2}, Lteam/opay/pay/cashier/PaymentActivity;->O(Lteam/opay/pay/cashier/PaymentActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public getNeedPaddingTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/PaymentActivity;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/cashier/Hilt_PaymentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/cashier/PaymentActivity;->init()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDestroy()V
    .locals 10

    .line 1
    invoke-super {p0}, Lteam/opay/pay/cashier/Hilt_PaymentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->h0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "v6"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lnfa;->a:Lnfa;

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/cashier/BasePaymentActivity;->F()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lteam/opay/pay/cashier/PaySheetViewModel;->n0()Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v0, v3, v2, v1, v3}, Lnfa;->e(Lnfa;Ljava/util/Map;Lteam/opay/pay/websocket/IWsMessageDelegate;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object v4, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 38
    .line 39
    new-instance v6, Lteam/opay/pay/home/event/OPayPageRefreshEvent;

    .line 40
    .line 41
    invoke-direct {v6, v1}, Lteam/opay/pay/home/event/OPayPageRefreshEvent;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v9, 0x0

    .line 46
    const-string v5, "opay_page_refresh_event"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setNeedPaddingTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/cashier/PaymentActivity;->i:Z

    .line 2
    .line 3
    return-void
.end method
