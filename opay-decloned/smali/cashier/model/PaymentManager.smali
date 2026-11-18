.class public final Lcashier/model/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/model/PaymentManager$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u001b\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0011J\u000f\u0010\u0019\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0011J\u0019\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0011J\u000f\u0010\"\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0011J\u000f\u0010#\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0011J\u000f\u0010$\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0011J\u000f\u0010%\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0011J\u000f\u0010&\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0011J\u000f\u0010\'\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0011J\u0017\u0010)\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008)\u0010 J\u000f\u0010*\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0011J\u0017\u0010/\u001a\u00020\u00082\u0006\u0010.\u001a\u00020-H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00103\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00083\u00104J/\u00107\u001a\u00020\u00082\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00102\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00087\u00108J\u001d\u0010;\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u00152\u0006\u0010:\u001a\u00020\u0015\u00a2\u0006\u0004\u0008;\u0010<J\r\u0010=\u001a\u00020\u0008\u00a2\u0006\u0004\u0008=\u0010\u0011J\u0015\u0010@\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010>\u00a2\u0006\u0004\u0008@\u0010AJ\r\u0010C\u001a\u00020B\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u0004\u0018\u00010E\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u0004\u0018\u00010B\u00a2\u0006\u0004\u0008H\u0010DJ\u001f\u0010L\u001a\u00020\u00082\u0008\u0010J\u001a\u0004\u0018\u00010I2\u0006\u0010K\u001a\u00020\u0015\u00a2\u0006\u0004\u0008L\u0010MR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR#\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u0016\u0010W\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010=R\"\u0010[\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010=\u001a\u0004\u0008Y\u0010+\"\u0004\u0008Z\u0010 R\"\u0010_\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010=\u001a\u0004\u0008]\u0010+\"\u0004\u0008^\u0010 R\"\u0010c\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010=\u001a\u0004\u0008a\u0010+\"\u0004\u0008b\u0010 R$\u0010k\u001a\u0004\u0018\u00010d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010f\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR$\u0010s\u001a\u0004\u0018\u00010l8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008m\u0010n\u001a\u0004\u0008o\u0010p\"\u0004\u0008q\u0010r\u00a8\u0006t"
    }
    d2 = {
        "Lcashier/model/PaymentManager;",
        "",
        "Lag8;",
        "owner",
        "Lcashier/model/CashierViewModel;",
        "viewModel",
        "Lkotlin/Function1;",
        "",
        "",
        "onFailRetry",
        "<init>",
        "(Lag8;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function1;)V",
        "Lcashier/VerifyResult;",
        "it",
        "A",
        "(Lcashier/VerifyResult;)V",
        "o",
        "()V",
        "Y",
        "p",
        "",
        "",
        "x",
        "()Ljava/util/Map;",
        "E",
        "P",
        "Landroidx/fragment/app/FragmentActivity;",
        "v",
        "()Landroidx/fragment/app/FragmentActivity;",
        "C",
        "showPositive",
        "S",
        "(Z)V",
        "O",
        "R",
        "Q",
        "N",
        "U",
        "V",
        "X",
        "showMethods",
        "W",
        "z",
        "()Z",
        "G",
        "Lcashier/data/PayStatus;",
        "status",
        "a0",
        "(Lcashier/data/PayStatus;)V",
        "success",
        "fromWs",
        "F",
        "(ZZ)V",
        "code",
        "close",
        "D",
        "(Ljava/lang/String;Ljava/lang/Boolean;Z)V",
        "type",
        "input",
        "B",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Z",
        "",
        "Lcashier/data/FeeInfo;",
        "t",
        "()Ljava/util/List;",
        "Lcashier/util/CurrencyAmount;",
        "r",
        "()Lcashier/util/CurrencyAmount;",
        "Lcashier/data/CashbackInfo;",
        "s",
        "()Lcashier/data/CashbackInfo;",
        "q",
        "Lcashier/normalpay/ComplianceDialogInfo;",
        "payAuth",
        "authType",
        "M",
        "(Lcashier/normalpay/ComplianceDialogInfo;Ljava/lang/String;)V",
        "a",
        "Lag8;",
        "b",
        "Lcashier/model/CashierViewModel;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getOnFailRetry",
        "()Lkotlin/jvm/functions/Function1;",
        "d",
        "hasShowPin",
        "e",
        "u",
        "J",
        "mUseCashback",
        "f",
        "getCashAuthHasShow",
        "H",
        "cashAuthHasShow",
        "g",
        "getKycCompletionFinishOrSkip",
        "I",
        "kycCompletionFinishOrSkip",
        "Lcashier/data/PaymentItem;",
        "h",
        "Lcashier/data/PaymentItem;",
        "w",
        "()Lcashier/data/PaymentItem;",
        "K",
        "(Lcashier/data/PaymentItem;)V",
        "paymentItem",
        "Lcashier/data/Voucher;",
        "i",
        "Lcashier/data/Voucher;",
        "y",
        "()Lcashier/data/Voucher;",
        "L",
        "(Lcashier/data/Voucher;)V",
        "voucher",
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
.field public final a:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcashier/model/CashierViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcashier/data/PaymentItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcashier/data/Voucher;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lag8;Lcashier/model/CashierViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/model/CashierViewModel;
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
            "Lag8;",
            "Lcashier/model/CashierViewModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onFailRetry"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 20
    .line 21
    iput-object p2, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 22
    .line 23
    iput-object p3, p0, Lcashier/model/PaymentManager;->c:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    sget-object p3, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 26
    .line 27
    const-string v0, "biometric_pay_key"

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Lcashier/util/CashierBus;->a(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcashier/model/PaymentManager$a;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$a;-><init>(Lcashier/model/PaymentManager;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "set_pay_pin_success_key"

    .line 38
    .line 39
    invoke-virtual {p3, p1, v2, v1}, Lcashier/util/CashierBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcashier/model/PaymentManager$b;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$b;-><init>(Lcashier/model/PaymentManager;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p1, v0, v1}, Lcashier/util/CashierBus;->c(Lag8;Ljava/lang/Object;La66;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    new-instance v0, Lcashier/model/PaymentManager$3;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcashier/model/PaymentManager$3;-><init>(Lcashier/model/PaymentManager;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcashier/model/PaymentManagerKt$a;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcashier/model/PaymentManagerKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->m0()Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    new-instance v0, Lcashier/model/PaymentManager$4;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcashier/model/PaymentManager$4;-><init>(Lcashier/model/PaymentManager;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcashier/model/PaymentManagerKt$a;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Lcashier/model/PaymentManagerKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    new-instance v0, Lcashier/model/PaymentManager$5;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcashier/model/PaymentManager$5;-><init>(Lcashier/model/PaymentManager;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcashier/model/PaymentManagerKt$a;

    .line 94
    .line 95
    invoke-direct {v1, v0}, Lcashier/model/PaymentManagerKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-instance p3, Lefb;

    .line 106
    .line 107
    invoke-direct {p3, p0}, Lefb;-><init>(Lcashier/model/PaymentManager;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static synthetic T(Lcashier/model/PaymentManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->S(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcashier/model/PaymentManager;Lcashier/data/CashierOrderResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcashier/model/PaymentManager;->b(Lcashier/model/PaymentManager;Lcashier/data/CashierOrderResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Lcashier/model/PaymentManager;Lcashier/data/CashierOrderResult;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "BasePaymentFragment orderStatus observe,it = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->c()Lcashier/data/CashierStatus;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v2

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->c()Lcashier/data/CashierStatus;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sget-object v1, Lcashier/model/PaymentManager$c;->a:[I

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    aget v0, v1, v0

    .line 47
    .line 48
    :goto_1
    const/4 v1, 0x1

    .line 49
    const/4 v3, 0x0

    .line 50
    packed-switch v0, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->X()V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :pswitch_0
    sget-object p1, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcashier/ui/SetPinTipFragment;

    .line 63
    .line 64
    invoke-direct {p1}, Lcashier/ui/SetPinTipFragment;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-static {p0, p1}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->N()V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->U()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :pswitch_3
    invoke-virtual {p0, v1}, Lcashier/model/PaymentManager;->W(Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_4
    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcashier/data/CashierOrderResult;->a()Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, v0, p1, v3}, Lcashier/model/PaymentManager;->D(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :pswitch_5
    iget-object p1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 102
    .line 103
    iget-object p0, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 104
    .line 105
    const-string v0, "C10305"

    .line 106
    .line 107
    invoke-virtual {p1, p0, v0}, Lcashier/model/CashierViewModel;->F(Lag8;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :pswitch_6
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->V()V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_7
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->R()V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_8
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->Q()V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_9
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->O()V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_a
    invoke-virtual {p0, v3, v3}, Lcashier/model/PaymentManager;->F(ZZ)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :pswitch_b
    invoke-virtual {p0, v1, v3}, Lcashier/model/PaymentManager;->F(ZZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_c
    invoke-virtual {p0, v3}, Lcashier/model/PaymentManager;->S(Z)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :pswitch_d
    invoke-static {p0, v3, v1, v2}, Lcashier/model/PaymentManager;->T(Lcashier/model/PaymentManager;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_e
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->C()V

    .line 144
    .line 145
    .line 146
    :cond_2
    :goto_2
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic c(Lcashier/model/PaymentManager;)Lag8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcashier/model/PaymentManager;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcashier/model/PaymentManager;)Lcashier/model/CashierViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcashier/model/PaymentManager;Lcashier/VerifyResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->A(Lcashier/VerifyResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcashier/model/PaymentManager;Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcashier/model/PaymentManager;->D(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcashier/model/PaymentManager;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcashier/model/PaymentManager;->F(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcashier/model/PaymentManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/model/PaymentManager;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcashier/model/PaymentManager;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->W(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcashier/model/PaymentManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lcashier/model/PaymentManager;Lcashier/data/PayStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(Lcashier/VerifyResult;)V
    .locals 12

    .line 1
    sget-object v0, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 7
    .line 8
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    .line 9
    .line 10
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcashier/VerifyResult;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v11, 0x0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    move-object v1, v11

    .line 28
    :cond_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move-object v4, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_not_verify_tip:I

    .line 34
    .line 35
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :goto_2
    invoke-virtual {p1}, Lcashier/VerifyResult;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    new-instance v1, Lcashier/data/FailedInfo;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/16 v9, 0x1c

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    move-object v2, v1

    .line 53
    invoke-direct/range {v2 .. v10}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->A0(Lcashier/data/FailedInfo;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcashier/VerifyResult;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move-object v1, v11

    .line 83
    :goto_3
    const-string v2, ""

    .line 84
    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    move-object v4, v2

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    move-object v4, v1

    .line 90
    :goto_4
    invoke-virtual {p1}, Lcashier/VerifyResult;->b()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    move-object v5, v2

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    move-object v5, v1

    .line 99
    :goto_5
    invoke-virtual {p1}, Lcashier/VerifyResult;->c()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    move-object v11, v1

    .line 113
    :goto_6
    if-nez v11, :cond_7

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_7
    move-object v6, v11

    .line 117
    goto :goto_8

    .line 118
    :cond_8
    :goto_7
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_not_verify_tip:I

    .line 119
    .line 120
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v6, v1

    .line 125
    :goto_8
    new-instance v1, Lcashier/data/CloseOrderReq;

    .line 126
    .line 127
    const/4 v7, 0x0

    .line 128
    const/16 v8, 0x8

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    move-object v3, v1

    .line 132
    invoke-direct/range {v3 .. v9}, Lcashier/data/CloseOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->E(Lcashier/data/CloseOrderReq;)V

    .line 136
    .line 137
    .line 138
    :cond_9
    invoke-virtual {p1}, Lcashier/VerifyResult;->b()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcashier/VerifyResult;->a()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, p1, v1}, Lcashier/model/PaymentManager;->D(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "cvv"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    if-nez v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const v0, 0x1af2b

    .line 26
    .line 27
    .line 28
    if-eq p2, v0, :cond_4

    .line 29
    .line 30
    const v0, 0x1b195

    .line 31
    .line 32
    .line 33
    if-eq p2, v0, :cond_2

    .line 34
    .line 35
    const v0, 0x65b3d6e

    .line 36
    .line 37
    .line 38
    if-eq p2, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p2, "phone"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v2, "C10303"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string p2, "pin"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string v2, "C10302"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const-string p2, "otp"

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    const-string v2, "C10301"

    .line 74
    .line 75
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_b

    .line 80
    .line 81
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v3, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 88
    .line 89
    invoke-interface {v0, v3, p2}, Lcashier/net/IPaymentApi;->onPayVerifyCancel(Lcashier/model/CashierViewModel;Landroidx/fragment/app/FragmentActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 99
    .line 100
    iget-object p2, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v2}, Lcashier/model/CashierViewModel;->F(Lag8;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    sget-object p1, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    iget-object p1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 118
    .line 119
    if-eqz p1, :cond_b

    .line 120
    .line 121
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_b

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lcashier/data/Card;->o(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->p()V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_8
    iget-object p1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object p2, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 141
    .line 142
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_9

    .line 147
    .line 148
    invoke-virtual {p2}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    goto :goto_1

    .line 153
    :cond_9
    const/4 p2, 0x0

    .line 154
    :goto_1
    if-nez p2, :cond_a

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_a
    move-object v2, p2

    .line 158
    :goto_2
    const/4 p2, 0x1

    .line 159
    invoke-virtual {p1, v2, p2}, Lcashier/util/PayOrderStatusPolling;->g(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    :cond_b
    :goto_3
    return-void
.end method

.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcashier/data/OrderInfo;->d()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1}, Lcashier/model/PaymentManager;->F(ZZ)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_1
    if-nez v1, :cond_3

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcashier/util/PayOrderStatusPolling;->g(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->d0()Lcashier/data/PayStatus;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcashier/data/PayStatus;->FAILED:Lcashier/data/PayStatus;

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, v2}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcashier/data/FailedInfo;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sget-object v8, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    const-string p3, "websocket"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p3, "query"

    .line 34
    .line 35
    :goto_0
    const-string v2, "response_frompage"

    .line 36
    .line 37
    invoke-static {v2, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v2, "3"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string v2, "1"

    .line 47
    .line 48
    :goto_1
    const-string v3, "st"

    .line 49
    .line 50
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "errorcode"

    .line 55
    .line 56
    invoke-static {v3, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "errormessage"

    .line 71
    .line 72
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x0

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {v5}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move-object v5, v6

    .line 91
    :goto_2
    const-string v7, "selected_paychannel"

    .line 92
    .line 93
    invoke-static {v7, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget-object v7, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    invoke-virtual {v7}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    invoke-virtual {v7}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :cond_4
    const-string v7, "pc"

    .line 112
    .line 113
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v7, 0x6

    .line 118
    new-array v7, v7, [Lkotlin/Pair;

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    aput-object p3, v7, v9

    .line 122
    .line 123
    aput-object v2, v7, v0

    .line 124
    .line 125
    const/4 p3, 0x2

    .line 126
    aput-object v3, v7, p3

    .line 127
    .line 128
    const/4 p3, 0x3

    .line 129
    aput-object v4, v7, p3

    .line 130
    .line 131
    const/4 p3, 0x4

    .line 132
    aput-object v5, v7, p3

    .line 133
    .line 134
    const/4 p3, 0x5

    .line 135
    aput-object v6, v7, p3

    .line 136
    .line 137
    const/4 v6, 0x4

    .line 138
    const/4 p3, 0x0

    .line 139
    const-string v3, "COMMON_order_response"

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    move-object v2, v8

    .line 143
    move-object v4, v7

    .line 144
    move-object v7, p3

    .line 145
    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object p3, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 149
    .line 150
    invoke-virtual {p3}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {p3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p2, :cond_5

    .line 166
    .line 167
    iget-object p2, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 168
    .line 169
    invoke-virtual {p2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2, v0}, Lcashier/data/FailedInfo;->f(Z)V

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-virtual {v8}, Lcashier/model/CashierViewModel$Companion;->e()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iget-object p3, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 181
    .line 182
    invoke-virtual {p3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p3}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-eqz p2, :cond_6

    .line 195
    .line 196
    invoke-virtual {v8}, Lcashier/model/CashierViewModel$Companion;->c()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    iget-object p3, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 201
    .line 202
    invoke-virtual {p3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    invoke-virtual {p3}, Lcashier/data/FailedInfo;->a()Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object p3

    .line 210
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_6

    .line 215
    .line 216
    sget-object p1, Lcashier/ui/PayNetFailFragment;->j:Lcashier/ui/PayNetFailFragment$Companion;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcashier/ui/PayNetFailFragment$Companion;->a()Lcashier/ui/PayNetFailFragment;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    new-instance p2, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;

    .line 223
    .line 224
    invoke-direct {p2, p0}, Lcashier/model/PaymentManager$paymentFailed$failFragment$1$1;-><init>(Lcashier/model/PaymentManager;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Lcashier/ui/PayNetFailFragment;->Q(Lhm6;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    if-nez v1, :cond_7

    .line 232
    .line 233
    sget-object p1, Lcashier/ui/PayFailRetryFragment;->j:Lcashier/ui/PayFailRetryFragment$Companion;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcashier/ui/PayFailRetryFragment$Companion;->a()Lcashier/ui/PayFailRetryFragment;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance p2, Lcashier/model/PaymentManager$paymentFailed$failFragment$2$1;

    .line 240
    .line 241
    invoke-direct {p2, p0}, Lcashier/model/PaymentManager$paymentFailed$failFragment$2$1;-><init>(Lcashier/model/PaymentManager;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Lcashier/ui/PayFailRetryFragment;->O(Lhm6;)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_7
    new-instance p2, Lcashier/ui/PayFailedFragment;

    .line 249
    .line 250
    invoke-direct {p2}, Lcashier/ui/PayFailedFragment;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2, p1}, Lcashier/ui/PayFailedFragment;->L(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    move-object p1, p2

    .line 257
    :goto_3
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    if-eqz p2, :cond_8

    .line 262
    .line 263
    invoke-static {p2, p1}, Lcashier/util/UtilsKt;->o(Landroidx/fragment/app/FragmentActivity;Lcashier/ui/BaseBSFragment;)V

    .line 264
    .line 265
    .line 266
    :cond_8
    return-void
.end method

.method public final E()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 2
    .line 3
    invoke-interface {v0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lcashier/data/PayStatus;->ORDER:Lcashier/data/PayStatus;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 22
    .line 23
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->G0(Lcashier/data/PaymentItem;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->S()Lcashier/data/NewPaymentInfoRequest;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcashier/data/NewPaymentInfoRequest;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->p(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->q()Lcashier/util/CurrencyAmount;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    sget-object v1, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcashier/util/CurrencyAmount$Companion;->a()Lcashier/util/CurrencyAmount;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_1
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->h(Lcashier/util/CurrencyAmount;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->t()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    new-instance v3, Ljava/util/ArrayList;

    .line 82
    .line 83
    const/16 v4, 0xa

    .line 84
    .line 85
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lcashier/data/FeeInfo;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcashier/data/FeeInfo;->b()Lcashier/util/CurrencyAmount;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v4}, Lcashier/data/FeeInfo;->d()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v4}, Lcashier/data/FeeInfo;->a()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    new-instance v4, Lcashier/data/FeeInfo;

    .line 121
    .line 122
    const/16 v12, 0x26

    .line 123
    .line 124
    const/4 v13, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    move-object v5, v4

    .line 129
    invoke-direct/range {v5 .. v13}, Lcashier/data/FeeInfo;-><init>(Lcashier/util/CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    move-object v3, v2

    .line 137
    :cond_3
    invoke-virtual {v0, v3}, Lcashier/data/ConfirmPayReq;->m(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    .line 156
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    goto :goto_1

    .line 161
    :cond_4
    move-object v1, v2

    .line 162
    :goto_1
    const-string v3, ""

    .line 163
    .line 164
    if-nez v1, :cond_5

    .line 165
    .line 166
    move-object v1, v3

    .line 167
    :cond_5
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->q(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v1, p0, Lcashier/model/PaymentManager;->i:Lcashier/data/Voucher;

    .line 177
    .line 178
    if-eqz v1, :cond_6

    .line 179
    .line 180
    invoke-virtual {v1}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto :goto_2

    .line 185
    :cond_6
    move-object v1, v2

    .line 186
    :goto_2
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->u(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget-object v1, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 196
    .line 197
    iget-object v4, p0, Lcashier/model/PaymentManager;->i:Lcashier/data/Voucher;

    .line 198
    .line 199
    if-eqz v4, :cond_7

    .line 200
    .line 201
    invoke-virtual {v4}, Lcashier/data/Voucher;->getDiscountAmount()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    goto :goto_3

    .line 206
    :cond_7
    move-object v4, v2

    .line 207
    :goto_3
    if-nez v4, :cond_8

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_8
    move-object v3, v4

    .line 211
    :goto_4
    invoke-virtual {v1, v3}, Lcashier/util/CurrencyAmount$Companion;->b(Ljava/lang/String;)Lcashier/util/CurrencyAmount;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->o(Lcashier/util/CurrencyAmount;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-boolean v1, p0, Lcashier/model/PaymentManager;->e:Z

    .line 225
    .line 226
    if-eqz v1, :cond_9

    .line 227
    .line 228
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->s()Lcashier/data/CashbackInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_9

    .line 233
    .line 234
    invoke-virtual {v1}, Lcashier/data/CashbackInfo;->f()Lcashier/util/CurrencyAmount;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    goto :goto_5

    .line 239
    :cond_9
    move-object v1, v2

    .line 240
    :goto_5
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->k(Lcashier/util/CurrencyAmount;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 250
    .line 251
    if-eqz v1, :cond_a

    .line 252
    .line 253
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_a

    .line 258
    .line 259
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->e()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    goto :goto_6

    .line 264
    :cond_a
    move-object v1, v2

    .line 265
    :goto_6
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->n(Ljava/util/List;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 269
    .line 270
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 275
    .line 276
    if-eqz v1, :cond_b

    .line 277
    .line 278
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-eqz v1, :cond_b

    .line 283
    .line 284
    invoke-virtual {v1}, Lcashier/data/Card;->h()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    goto :goto_7

    .line 289
    :cond_b
    move-object v1, v2

    .line 290
    :goto_7
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->j(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 300
    .line 301
    if-eqz v1, :cond_c

    .line 302
    .line 303
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    if-eqz v1, :cond_c

    .line 308
    .line 309
    invoke-virtual {v1}, Lcashier/data/Card;->f()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    goto :goto_8

    .line 314
    :cond_c
    move-object v1, v2

    .line 315
    :goto_8
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->i(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 319
    .line 320
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 325
    .line 326
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_d

    .line 331
    .line 332
    invoke-virtual {v1}, Lcashier/data/CashierInfoRsp;->a()Lcashier/data/DeskActivityInfo;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    :cond_d
    invoke-virtual {v0, v2}, Lcashier/data/ConfirmPayReq;->g(Lcashier/data/DeskActivityInfo;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 340
    .line 341
    iget-object v1, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->G(Lag8;)Landroidx/lifecycle/MutableLiveData;

    .line 344
    .line 345
    .line 346
    return-void
.end method

.method public final F(ZZ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->d0()Lcashier/data/PayStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcashier/data/PayStatus;->ORDER:Lcashier/data/PayStatus;

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v1, Lcashier/data/PayStatus;->SUCCESS:Lcashier/data/PayStatus;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const-string v1, "websocket"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "query"

    .line 27
    .line 28
    :goto_0
    const-string v3, "response_frompage"

    .line 29
    .line 30
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->i0()Lcashier/data/PaymentItem;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v3, v8

    .line 49
    :goto_1
    const-string v4, "selected_paychannel"

    .line 50
    .line 51
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const-string v4, "0"

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const-string v4, "2"

    .line 61
    .line 62
    :goto_2
    const-string v5, "st"

    .line 63
    .line 64
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v5, v0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 69
    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v5}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move-object v5, v8

    .line 84
    :goto_3
    const-string v6, "pc"

    .line 85
    .line 86
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v6, 0x4

    .line 91
    new-array v6, v6, [Lkotlin/Pair;

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    aput-object v1, v6, v7

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    aput-object v3, v6, v1

    .line 98
    .line 99
    const/4 v1, 0x2

    .line 100
    aput-object v4, v6, v1

    .line 101
    .line 102
    const/4 v1, 0x3

    .line 103
    aput-object v5, v6, v1

    .line 104
    .line 105
    const/4 v1, 0x4

    .line 106
    const/4 v7, 0x0

    .line 107
    const-string v3, "COMMON_order_response"

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    move-object v4, v6

    .line 111
    move v6, v1

    .line 112
    invoke-static/range {v2 .. v7}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    sget-object v1, Lcashier/CashierResult;->SUCCESS:Lcashier/CashierResult;

    .line 118
    .line 119
    :goto_4
    move-object v10, v1

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    sget-object v1, Lcashier/CashierResult;->PENDING:Lcashier/CashierResult;

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_5
    iget-object v1, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, ""

    .line 131
    .line 132
    if-eqz v1, :cond_9

    .line 133
    .line 134
    new-instance v3, Lcashier/PayResult;

    .line 135
    .line 136
    iget-object v4, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 137
    .line 138
    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_6

    .line 147
    .line 148
    invoke-virtual {v4}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    goto :goto_6

    .line 153
    :cond_6
    move-object v4, v8

    .line 154
    :goto_6
    if-nez v4, :cond_7

    .line 155
    .line 156
    move-object v11, v2

    .line 157
    goto :goto_7

    .line 158
    :cond_7
    move-object v11, v4

    .line 159
    :goto_7
    iget-object v4, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 160
    .line 161
    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    invoke-virtual {v4}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    move-object v12, v4

    .line 172
    goto :goto_8

    .line 173
    :cond_8
    move-object v12, v8

    .line 174
    :goto_8
    const/16 v16, 0x38

    .line 175
    .line 176
    const/16 v17, 0x0

    .line 177
    .line 178
    const/4 v13, 0x0

    .line 179
    const/4 v14, 0x0

    .line 180
    const/4 v15, 0x0

    .line 181
    move-object v9, v3

    .line 182
    invoke-direct/range {v9 .. v17}, Lcashier/PayResult;-><init>(Lcashier/CashierResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v1, v3}, Lcashier/CashierDelegate;->onPaymentResult(Lcashier/PayResult;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    sget-object v18, Lteam/opay/swarmfoundation/utils/SwarmBus;->a:Lteam/opay/swarmfoundation/utils/SwarmBus;

    .line 189
    .line 190
    new-instance v20, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 191
    .line 192
    iget-object v1, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto :goto_9

    .line 209
    :cond_a
    move-object v1, v8

    .line 210
    :goto_9
    if-nez v1, :cond_b

    .line 211
    .line 212
    move-object v10, v2

    .line 213
    goto :goto_a

    .line 214
    :cond_b
    move-object v10, v1

    .line 215
    :goto_a
    iget-object v1, v0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_c

    .line 222
    .line 223
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    :cond_c
    if-nez v8, :cond_d

    .line 228
    .line 229
    move-object v11, v2

    .line 230
    goto :goto_b

    .line 231
    :cond_d
    move-object v11, v8

    .line 232
    :goto_b
    if-eqz p1, :cond_e

    .line 233
    .line 234
    const/16 v1, 0xca

    .line 235
    .line 236
    const/16 v12, 0xca

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_e
    const/16 v1, 0xcb

    .line 240
    .line 241
    const/16 v12, 0xcb

    .line 242
    .line 243
    :goto_c
    const/16 v15, 0x18

    .line 244
    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    const/4 v13, 0x0

    .line 248
    const/4 v14, 0x0

    .line 249
    move-object/from16 v9, v20

    .line 250
    .line 251
    invoke-direct/range {v9 .. v16}, Lteam/opay/swarmfoundation/utils/PaymentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    .line 253
    .line 254
    const/16 v22, 0x4

    .line 255
    .line 256
    const/16 v23, 0x0

    .line 257
    .line 258
    const-string v19, "swarm_event_key_payment_result"

    .line 259
    .line 260
    const/16 v21, 0x0

    .line 261
    .line 262
    invoke-static/range {v18 .. v23}, Lteam/opay/swarmfoundation/utils/SwarmBus;->d(Lteam/opay/swarmfoundation/utils/SwarmBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    if-eqz v1, :cond_f

    .line 270
    .line 271
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 272
    .line 273
    .line 274
    :cond_f
    return-void
.end method

.method public final G()V
    .locals 10

    .line 1
    sget-object v0, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcashier/data/ConfirmPayReq;->s(Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v7, Lcashier/data/VerifyReqInfo;

    .line 24
    .line 25
    const/4 v5, 0x7

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    move-object v1, v7

    .line 31
    invoke-direct/range {v1 .. v6}, Lcashier/data/VerifyReqInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v7}, Lcashier/data/ConfirmPayReq;->t(Lcashier/data/VerifyReqInfo;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v9, Lcashier/data/ValidPoolInfo;

    .line 44
    .line 45
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Lcashier/CashierDelegate;->getSupportValidationTypes()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    move-object v2, v1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :goto_2
    const/16 v7, 0x1e

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v1, v9

    .line 76
    invoke-direct/range {v1 .. v8}, Lcashier/data/ValidPoolInfo;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v9}, Lcashier/data/ConfirmPayReq;->r(Lcashier/data/ValidPoolInfo;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/model/PaymentManager;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public final I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/model/PaymentManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final J(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/model/PaymentManager;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final K(Lcashier/data/PaymentItem;)V
    .locals 0
    .param p1    # Lcashier/data/PaymentItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 2
    .line 3
    return-void
.end method

.method public final L(Lcashier/data/Voucher;)V
    .locals 0
    .param p1    # Lcashier/data/Voucher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/model/PaymentManager;->i:Lcashier/data/Voucher;

    .line 2
    .line 3
    return-void
.end method

.method public final M(Lcashier/normalpay/ComplianceDialogInfo;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcashier/normalpay/ComplianceDialogInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcashier/normalpay/PayComplianceDialogFragment;->o:Lcashier/normalpay/PayComplianceDialogFragment$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcashier/normalpay/PayComplianceDialogFragment$Companion;->a()Lcashier/normalpay/PayComplianceDialogFragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Lcashier/normalpay/PayComplianceDialogFragment;->S(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcashier/normalpay/PayComplianceDialogFragment;->T(Lcashier/normalpay/ComplianceDialogInfo;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final N()V
    .locals 12

    .line 1
    sget-object v0, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcashier/ui/PayNoticeDialog;->i:Lcashier/ui/PayNoticeDialog$Companion;

    .line 7
    .line 8
    new-instance v11, Lcashier/ui/PayNoticeData;

    .line 9
    .line 10
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_biometric_pay_change_device_tip:I

    .line 11
    .line 12
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_confirm:I

    .line 17
    .line 18
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/16 v9, 0x73

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v1, v11

    .line 31
    invoke-direct/range {v1 .. v10}, Lcashier/ui/PayNoticeData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v11}, Lcashier/ui/PayNoticeDialog$Companion;->a(Lcashier/ui/PayNoticeData;)Lcashier/ui/PayNoticeDialog;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcashier/model/PaymentManager$showFingerError$1$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$showFingerError$1$1;-><init>(Lcashier/model/PaymentManager;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcashier/ui/PayNoticeDialog;->J(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    sget-object v0, Lb62;->a:Lb62;

    .line 56
    .line 57
    invoke-virtual {v0}, Lb62;->g()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final O()V
    .locals 13

    .line 1
    sget-object v0, Lcashier/ui/PayVerificationActivity;->h:Lcashier/ui/PayVerificationActivity$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    const-string v3, ""

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-object v5, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v5, v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_2
    if-nez v2, :cond_3

    .line 50
    .line 51
    move-object v6, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move-object v6, v2

    .line 54
    :goto_2
    sget v9, Lteam/opay/pay/cashier/R$string;->pay_otp_verification_title:I

    .line 55
    .line 56
    sget v10, Lteam/opay/pay/cashier/R$string;->pay_otp_verification_description:I

    .line 57
    .line 58
    sget v11, Lteam/opay/pay/cashier/R$string;->pay_otp_verification_label:I

    .line 59
    .line 60
    sget v12, Lteam/opay/pay/cashier/R$string;->pay_otp_verification_hint:I

    .line 61
    .line 62
    new-instance v1, Lcashier/ui/VerificationConfig;

    .line 63
    .line 64
    const-string v8, "otp"

    .line 65
    .line 66
    move-object v4, v1

    .line 67
    invoke-direct/range {v4 .. v12}, Lcashier/ui/VerificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcashier/net/IPaymentApi;Ljava/lang/String;IIII)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcashier/ui/PayVerificationActivity$Companion;->a(Lcashier/ui/VerificationConfig;Lag8;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final P()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcashier/model/PaymentManager;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcashier/model/PaymentManager;->d:Z

    .line 8
    .line 9
    new-instance v0, Lcashier/ui/PinInputFragment;

    .line 10
    .line 11
    invoke-direct {v0}, Lcashier/ui/PinInputFragment;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcashier/model/PaymentManager$showInputPayPin$1$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$showInputPayPin$1$1;-><init>(Lcashier/model/PaymentManager;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcashier/ui/PinInputFragment;->P(Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcashier/model/PaymentManager$showInputPayPin$1$2;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$showInputPayPin$1$2;-><init>(Lcashier/model/PaymentManager;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcashier/ui/PinInputFragment;->O(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcashier/util/UtilsKt;->o(Landroidx/fragment/app/FragmentActivity;Lcashier/ui/BaseBSFragment;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final Q()V
    .locals 13

    .line 1
    sget-object v0, Lcashier/ui/PayVerificationActivity;->h:Lcashier/ui/PayVerificationActivity$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    const-string v3, ""

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-object v5, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v5, v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_2
    if-nez v2, :cond_3

    .line 50
    .line 51
    move-object v6, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move-object v6, v2

    .line 54
    :goto_2
    sget v9, Lteam/opay/pay/cashier/R$string;->pay_phone_verification_header:I

    .line 55
    .line 56
    sget v10, Lteam/opay/pay/cashier/R$string;->pay_phone_verification_description:I

    .line 57
    .line 58
    sget v12, Lteam/opay/pay/cashier/R$string;->pay_phone_number:I

    .line 59
    .line 60
    new-instance v1, Lcashier/ui/VerificationConfig;

    .line 61
    .line 62
    const-string v8, "phone"

    .line 63
    .line 64
    move-object v4, v1

    .line 65
    move v11, v12

    .line 66
    invoke-direct/range {v4 .. v12}, Lcashier/ui/VerificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcashier/net/IPaymentApi;Ljava/lang/String;IIII)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcashier/ui/PayVerificationActivity$Companion;->a(Lcashier/ui/VerificationConfig;Lag8;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final R()V
    .locals 13

    .line 1
    sget-object v0, Lcashier/ui/PayVerificationActivity;->h:Lcashier/ui/PayVerificationActivity$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    const-string v3, ""

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-object v5, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v5, v1

    .line 29
    :goto_1
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_2
    if-nez v2, :cond_3

    .line 50
    .line 51
    move-object v6, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move-object v6, v2

    .line 54
    :goto_2
    sget v9, Lteam/opay/pay/cashier/R$string;->pay_pin_verification_title:I

    .line 55
    .line 56
    sget v10, Lteam/opay/pay/cashier/R$string;->pay_pin_verification_description:I

    .line 57
    .line 58
    sget v11, Lteam/opay/pay/cashier/R$string;->pay_pin_verification_label:I

    .line 59
    .line 60
    sget v12, Lteam/opay/pay/cashier/R$string;->pay_pin_verification_hint:I

    .line 61
    .line 62
    new-instance v1, Lcashier/ui/VerificationConfig;

    .line 63
    .line 64
    const-string v8, "pin"

    .line 65
    .line 66
    move-object v4, v1

    .line 67
    invoke-direct/range {v4 .. v12}, Lcashier/ui/VerificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcashier/net/IPaymentApi;Ljava/lang/String;IIII)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcashier/ui/PayVerificationActivity$Companion;->a(Lcashier/ui/VerificationConfig;Lag8;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final S(Z)V
    .locals 13

    .line 1
    new-instance v12, Lcashier/ui/AlertInfo;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_daily_limit_title:I

    .line 15
    .line 16
    iget-object v4, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Lcashier/data/CashierInfoRsp;->i()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    if-nez v2, :cond_1

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    :cond_1
    const/4 v4, 0x1

    .line 32
    new-array v4, v4, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    aput-object v2, v4, v5

    .line 36
    .line 37
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_2
    if-nez v2, :cond_4

    .line 42
    .line 43
    :cond_3
    move-object v1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move-object v1, v2

    .line 46
    :goto_0
    iget-object v2, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    sget p1, Lteam/opay/pay/cashier/R$string;->pay_daily_limit_upgrade:I

    .line 59
    .line 60
    invoke-static {p1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    move-object v3, p1

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    move-object v3, v0

    .line 67
    :goto_1
    sget p1, Lteam/opay/pay/cashier/R$string;->pay_daily_limit_new_amount:I

    .line 68
    .line 69
    invoke-static {p1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/16 v10, 0x1f0

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v9, 0x0

    .line 81
    move-object v0, v12

    .line 82
    invoke-direct/range {v0 .. v11}, Lcashier/ui/AlertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lcashier/ui/PayAlertFragment;->g:Lcashier/ui/PayAlertFragment$Companion;

    .line 91
    .line 92
    invoke-virtual {p1, v12}, Lcashier/ui/PayAlertFragment$Companion;->a(Lcashier/ui/AlertInfo;)Lcashier/ui/PayAlertFragment;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lcashier/model/PaymentManager$showKycAlertDialog$1$1;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcashier/model/PaymentManager$showKycAlertDialog$1$1;-><init>(Lcashier/model/PaymentManager;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcashier/ui/PayAlertFragment;->I(Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-static {v0, p1}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    return-void
.end method

.method public final U()V
    .locals 4

    .line 1
    sget-object v0, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcashier/ui/PayPinErrorTipDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcashier/ui/PayPinErrorTipDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcashier/ui/PayPinError;

    .line 12
    .line 13
    iget-object v2, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcashier/data/FailedInfo;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    :cond_0
    iget-object v3, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcashier/model/CashierViewModel;->U()Lcashier/data/FailedInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcashier/data/FailedInfo;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v1, v2, v3}, Lcashier/ui/PayPinError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcashier/ui/PayPinErrorTipDialog;->L(Lcashier/ui/PayPinError;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcashier/model/PaymentManager$showPasswordError$1$1;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$showPasswordError$1$1;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcashier/ui/PayPinErrorTipDialog;->M(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    sget-object v0, Lcashier/ui/PayWebAuthFragment;->s:Lcashier/ui/PayWebAuthFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/ui/PayWebAuthFragment$Companion;->a()Lcashier/ui/PayWebAuthFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcashier/model/PaymentManager$showWebAuthFragment$1$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcashier/model/PaymentManager$showWebAuthFragment$1$1;-><init>(Lcashier/model/PaymentManager;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcashier/ui/PayWebAuthFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->v()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcashier/util/UtilsKt;->n(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final W(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcashier/model/PaymentManager;->a0(Lcashier/data/PayStatus;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcashier/model/PaymentManager;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final X()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->X()Lcashier/data/OrderInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-static {v0, v1, v3, v4, v2}, Lcashier/util/PayOrderStatusPolling;->h(Lcashier/util/PayOrderStatusPolling;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Y()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {v0}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {v0}, Lcashier/data/Card;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->p()V

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    sget-object v0, Lcashier/ui/PayVerificationActivity;->h:Lcashier/ui/PayVerificationActivity$Companion;

    .line 22
    .line 23
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, v2

    .line 42
    :goto_0
    const-string v3, ""

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    move-object v5, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v5, v1

    .line 49
    :goto_1
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :cond_3
    if-nez v2, :cond_4

    .line 70
    .line 71
    move-object v6, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object v6, v2

    .line 74
    :goto_2
    sget v9, Lteam/opay/pay/cashier/R$string;->pay_cvv_verification_title:I

    .line 75
    .line 76
    sget v10, Lteam/opay/pay/cashier/R$string;->pay_cvv_verification_description:I

    .line 77
    .line 78
    sget v11, Lteam/opay/pay/cashier/R$string;->pay_cvv_verification_label:I

    .line 79
    .line 80
    sget v12, Lteam/opay/pay/cashier/R$string;->pay_cvv_verification_hint:I

    .line 81
    .line 82
    new-instance v1, Lcashier/ui/VerificationConfig;

    .line 83
    .line 84
    const-string v8, "cvv"

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    invoke-direct/range {v4 .. v12}, Lcashier/ui/VerificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcashier/net/IPaymentApi;Ljava/lang/String;IIII)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lcashier/ui/PayVerificationActivity$Companion;->a(Lcashier/ui/VerificationConfig;Lag8;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->p()V

    .line 97
    .line 98
    .line 99
    :goto_3
    return-void
.end method

.method public final Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 5
    .line 6
    const-string v1, "souce_pay"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->f0(Ljava/lang/String;)Lcashier/normalpay/ComplianceDialogInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->z()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean v2, p0, Lcashier/model/PaymentManager;->f:Z

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcashier/model/PaymentManager;->M(Lcashier/normalpay/ComplianceDialogInfo;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->o()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final a0(Lcashier/data/PayStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcashier/model/CashierViewModel;->D0(Lcashier/data/PayStatus;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcashier/data/PayStatus;->ORDER:Lcashier/data/PayStatus;

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    sget-object v0, Lb62;->a:Lb62;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb62;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcashier/model/PaymentManager$checkFingerprint$1;->INSTANCE:Lcashier/model/PaymentManager$checkFingerprint$1;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcashier/CashierDelegate;->showBiometricPay(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->P()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->P()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->P()Lcashier/data/ConfirmPayReq;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcashier/data/ConfirmPayReq;->d()Lcashier/data/ValidPoolInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->x()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcashier/data/ValidPoolInfo;->a(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->E()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final q()Lcashier/util/CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcashier/data/PayChannelItem;->a()Lcashier/util/CurrencyAmount;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcashier/data/CashierInfoRsp;->k()Lcashier/data/DeskOrderInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcashier/data/DeskOrderInfo;->a()Lcashier/util/CurrencyAmount;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final r()Lcashier/util/CurrencyAmount;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/util/CurrencyAmount$Companion;->a()Lcashier/util/CurrencyAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcashier/model/PaymentManager;->t()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcashier/data/FeeInfo;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcashier/data/FeeInfo;->b()Lcashier/util/CurrencyAmount;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    sget-object v2, Lcashier/util/CurrencyAmount;->Companion:Lcashier/util/CurrencyAmount$Companion;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcashier/util/CurrencyAmount$Companion;->a()Lcashier/util/CurrencyAmount;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_0
    invoke-virtual {v0, v2}, Lcashier/util/CurrencyAmount;->plus(Lcashier/util/CurrencyAmount;)Lcashier/util/CurrencyAmount;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final s()Lcashier/data/CashbackInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcashier/data/CashierInfoRsp;->d()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcashier/data/CashierInfoRsp;->c()Lcashier/data/CashbackInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lcashier/data/PayChannelItem;->d()Lcashier/data/CashbackInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lcashier/data/CashierInfoRsp;->c()Lcashier/data/CashbackInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final t()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcashier/data/FeeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcashier/data/CashierInfoRsp;->k()Lcashier/data/DeskOrderInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcashier/data/DeskOrderInfo;->b()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    iget-object v2, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->h0()Lcashier/data/CashierInfoRsp;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lcashier/data/CashierInfoRsp;->d()Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_1
    const-string v3, "charge"

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    iget-object v2, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_2
    move-object v1, v0

    .line 57
    check-cast v1, Ljava/util/List;

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    if-eqz v0, :cond_5

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v2}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Lcashier/data/PayChannelItem;->i()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v1, v0

    .line 86
    check-cast v1, Ljava/util/List;

    .line 87
    .line 88
    :cond_5
    :goto_3
    return-object v1
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcashier/model/PaymentManager;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final v()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->a:Lag8;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    :goto_0
    return-object v0
.end method

.method public final w()Lcashier/data/PaymentItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    const-string v3, ""

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    move-object v1, v3

    .line 30
    :cond_1
    const-string v4, "orderNo"

    .line 31
    .line 32
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->e()Lcashier/data/PayChannelItem;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    :cond_2
    const-string v1, "BonusPayment"

    .line 52
    .line 53
    :cond_3
    const-string v4, "payChannel"

    .line 54
    .line 55
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcashier/model/PaymentManager;->h:Lcashier/data/PaymentItem;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v1}, Lcashier/data/PaymentItem;->a()Lcashier/data/Card;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Lcashier/data/Card;->h()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-object v1, v2

    .line 74
    :goto_1
    if-nez v1, :cond_5

    .line 75
    .line 76
    move-object v1, v3

    .line 77
    :cond_5
    const-string v4, "cardId"

    .line 78
    .line 79
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcashier/model/PaymentManager;->i:Lcashier/data/Voucher;

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    invoke-virtual {v1}, Lcashier/data/Voucher;->getVoucherId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move-object v1, v2

    .line 92
    :goto_2
    if-nez v1, :cond_7

    .line 93
    .line 94
    move-object v1, v3

    .line 95
    :cond_7
    const-string v4, "voucherId"

    .line 96
    .line 97
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->N()Lcashier/data/CashierInput;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_8

    .line 111
    .line 112
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getServiceType()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_3

    .line 117
    :cond_8
    move-object v1, v2

    .line 118
    :goto_3
    if-nez v1, :cond_9

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_9
    move-object v3, v1

    .line 122
    :goto_4
    const-string v1, "serviceType"

    .line 123
    .line 124
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string v1, "cashierType"

    .line 128
    .line 129
    const-string v3, "v5"

    .line 130
    .line 131
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_a

    .line 141
    .line 142
    invoke-interface {v1}, Lcashier/CashierDelegate;->getVerifyPool()Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :cond_a
    if-eqz v2, :cond_c

    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_b

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_c

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    :goto_6
    return-object v0
.end method

.method public final y()Lcashier/data/Voucher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->i:Lcashier/data/Voucher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcashier/model/PaymentManager;->b:Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    const-string v1, "souce_pay"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcashier/model/CashierViewModel;->q0(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcashier/model/PaymentManager;->g:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method
