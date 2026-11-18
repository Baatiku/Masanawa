.class public final Lteam/opay/pay/home/tabs/MoneyTransferViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MoneyTransferViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/MoneyTransferViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 [2\u00020\u00012\u00020\u0002:\u0001\\BC\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u00142\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J7\u0010*\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$2\u0018\u0010)\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\'\u0012\u0004\u0012\u00020\u001b0&\u00a2\u0006\u0004\u0008*\u0010+R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u0010\n\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020;0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R \u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190?0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010=R\u001a\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u001e0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010=R\u001d\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR*\u0010L\u001a\u00020;2\u0006\u0010I\u001a\u00020;8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0014\u0010S\u001a\u00020P8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010RR\u0014\u0010W\u001a\u00020T8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010VR\u0016\u0010Z\u001a\u0004\u0018\u00010X8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/MoneyTransferViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/core/payment/WalletRepository;",
        "walletRepository",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/pay/cashier/CashierRepository;",
        "cashierRepository",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "kycLevelDao",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "sessionProvider",
        "Landroid/app/Application;",
        "appLi",
        "<init>",
        "(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/e;Landroid/app/Application;)V",
        "Lteam/opay/core/api/BeforeCheckReq;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "",
        "s",
        "(Lteam/opay/core/api/BeforeCheckReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/home/tabs/MoneyRequest;",
        "moneyRequest",
        "",
        "w",
        "(Lteam/opay/pay/home/tabs/MoneyRequest;)V",
        "Lteam/opay/pay/home/tabs/BankRequest;",
        "bankRequest",
        "v",
        "(Lteam/opay/pay/home/tabs/BankRequest;)V",
        "",
        "serviceType",
        "Lag8;",
        "lifecycleOwner",
        "Lkotlin/Function1;",
        "",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "callback",
        "t",
        "(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Lteam/opay/core/payment/WalletRepository;",
        "c",
        "Lteam/opay/core/account/AccountRepository;",
        "d",
        "Lteam/opay/pay/cashier/CashierRepository;",
        "e",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "f",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "g",
        "Lteam/opay/core/api/e;",
        "h",
        "Landroid/app/Application;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "_lockWithdrawalSelectorLiveData",
        "Lteam/opay/core/android/arch/Event;",
        "j",
        "_moneyRequestLiveData",
        "k",
        "_bankRequestLiveData",
        "l",
        "Landroidx/lifecycle/LiveData;",
        "getBankRequestLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "bankRequestLiveData",
        "value",
        "m",
        "Z",
        "isSending",
        "()Z",
        "x",
        "(Z)V",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "n",
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
.field public static final n:Lteam/opay/pay/home/tabs/MoneyTransferViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lteam/opay/core/payment/WalletRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/cashier/CashierRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/kyc/levels/KycLevelDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Event<",
            "Lteam/opay/pay/home/tabs/MoneyRequest;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/home/tabs/BankRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/home/tabs/BankRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/MoneyTransferViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->n:Lteam/opay/pay/home/tabs/MoneyTransferViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/e;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/payment/WalletRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/cashier/CashierRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/kyc/levels/KycLevelDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "walletRepository"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "accountRepository"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "cashierRepository"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "appExecutors"

    .line 18
    .line 19
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "sessionProvider"

    .line 23
    .line 24
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "appLi"

    .line 28
    .line 29
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p7}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->b:Lteam/opay/core/payment/WalletRepository;

    .line 36
    .line 37
    iput-object p2, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 38
    .line 39
    iput-object p3, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->d:Lteam/opay/pay/cashier/CashierRepository;

    .line 40
    .line 41
    iput-object p4, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->e:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 42
    .line 43
    iput-object p5, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->f:Lteam/opay/core/android/arch/AppExecutors;

    .line 44
    .line 45
    iput-object p6, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->g:Lteam/opay/core/api/e;

    .line 46
    .line 47
    iput-object p7, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->h:Landroid/app/Application;

    .line 48
    .line 49
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    iput-object p1, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->l:Landroidx/lifecycle/LiveData;

    .line 71
    .line 72
    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->u(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/pay/api/PaymentAmountItem;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/api/PaymentAmountItem;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->g:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->g:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->g:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final s(Lteam/opay/core/api/BeforeCheckReq;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/core/api/BeforeCheckReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/BeforeCheckReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->d:Lteam/opay/pay/cashier/CashierRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/cashier/CashierRepository;->f(Lteam/opay/core/api/BeforeCheckReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final t(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
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
            "Ljava/lang/String;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "serviceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

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
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-class v1, Lfv;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 31
    .line 32
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lfv;

    .line 41
    .line 42
    new-instance v1, Lteam/opay/pay/api/ServiceTypeBody;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Lteam/opay/pay/api/ServiceTypeBody;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lfv;->C(Lteam/opay/pay/api/ServiceTypeBody;)Lretrofit2/Call;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 53
    .line 54
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lfv;

    .line 63
    .line 64
    new-instance v1, Lteam/opay/pay/api/ServiceTypeBody;

    .line 65
    .line 66
    invoke-direct {v1, p1}, Lteam/opay/pay/api/ServiceTypeBody;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Lfv;->e1(Lteam/opay/pay/api/ServiceTypeBody;)Lretrofit2/Call;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_0
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Lod9;

    .line 91
    .line 92
    invoke-direct {v0, p3}, Lod9;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final v(Lteam/opay/pay/home/tabs/BankRequest;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/tabs/BankRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bankRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final w(Lteam/opay/pay/home/tabs/MoneyRequest;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/tabs/MoneyRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "moneyRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-static {v0, p1}, Llp5;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final x(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->m:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->m:Z

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
