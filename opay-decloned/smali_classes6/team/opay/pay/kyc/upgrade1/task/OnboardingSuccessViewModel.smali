.class public final Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "OnboardingSuccessViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$Companion;,
        Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 K2\u00020\u0001:\u0001LB+\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0019\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001b\u0010\u0014J\u001f\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020&0%8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001d\u0010/\u001a\u0008\u0012\u0004\u0012\u00020,0%8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010*R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001d\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000c0%8\u0006\u00a2\u0006\u000c\n\u0004\u00084\u0010(\u001a\u0004\u00085\u0010*R\u001d\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000c0%8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010(\u001a\u0004\u00088\u0010*R\"\u0010?\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010\u000e\"\u0004\u0008=\u0010>R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010DR\'\u0010J\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020G0F0%8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010B\u001a\u0004\u0008I\u0010*\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "kycLevelDao",
        "Lteam/opay/pay/home/pay/ServicesRepository;",
        "servicesRepository",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/pay/home/pay/ServicesRepository;Lteam/opay/core/account/AccountRepository;)V",
        "",
        "Q",
        "()Ljava/lang/String;",
        "J",
        "Lag8;",
        "lifecycleOwner",
        "",
        "L",
        "(Lag8;)V",
        "E",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
        "N",
        "()Landroidx/lifecycle/LiveData;",
        "y",
        "level",
        "C",
        "(Lag8;Ljava/lang/String;)V",
        "b",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "c",
        "Lteam/opay/pay/home/pay/ServicesRepository;",
        "d",
        "Lteam/opay/core/account/AccountRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "K",
        "()Landroidx/lifecycle/MutableLiveData;",
        "kycLevelEvent",
        "",
        "f",
        "M",
        "loadingEvent",
        "Lcv7;",
        "g",
        "Lcv7;",
        "kycApiService",
        "h",
        "I",
        "descEvent",
        "i",
        "O",
        "rewardsEvent",
        "j",
        "Ljava/lang/String;",
        "P",
        "setType",
        "(Ljava/lang/String;)V",
        "type",
        "Lfv;",
        "k",
        "Lid8;",
        "H",
        "()Lfv;",
        "api",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "l",
        "G",
        "adDataEvent",
        "m",
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
.field public static final m:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lteam/opay/pay/kyc/levels/KycLevelDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/home/pay/ServicesRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
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

.field public final g:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->m:Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/kyc/levels/KycLevelDao;Lteam/opay/pay/home/pay/ServicesRepository;Lteam/opay/core/account/AccountRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/levels/KycLevelDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/home/pay/ServicesRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "servicesRepository"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "accountRepository"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->b:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->c:Lteam/opay/pay/home/pay/ServicesRepository;

    .line 22
    .line 23
    iput-object p4, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->d:Lteam/opay/core/account/AccountRepository;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    sget-object p1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 40
    .line 41
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-class p3, Lcv7;

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcv7;

    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->g:Lcv7;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    const-string p1, "startopay"

    .line 70
    .line 71
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->j:Ljava/lang/String;

    .line 72
    .line 73
    new-instance p1, Lsma;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lsma;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->k:Lid8;

    .line 83
    .line 84
    new-instance p1, Ltma;

    .line 85
    .line 86
    invoke-direct {p1}, Ltma;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->l:Lid8;

    .line 94
    .line 95
    return-void
.end method

.method public static final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final B(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-static {p0}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-class v1, Lfv;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lfv;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget-object v0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    aget p2, v0, p2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p2, v0, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v4, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$fetchKycLevel$1$1;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {v4, p0, p1, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$fetchKycLevel$1$1;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Ljr2;)V

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    .line 58
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const-string v2, ""

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    if-eq v0, p1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lteam/opay/pay/kyc/customer/KycSuccessStatusRsp;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/KycSuccessStatusRsp;->a()Lteam/opay/pay/kyc/customer/SuccessExtensions;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/SuccessExtensions;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object v0, v1

    .line 75
    :goto_0
    if-nez v0, :cond_4

    .line 76
    .line 77
    move-object v0, v2

    .line 78
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lez v0, :cond_5

    .line 83
    .line 84
    const-string v0, "upgrade"

    .line 85
    .line 86
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->j:Ljava/lang/String;

    .line 87
    .line 88
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lteam/opay/pay/kyc/customer/KycSuccessStatusRsp;

    .line 95
    .line 96
    if-eqz v3, :cond_6

    .line 97
    .line 98
    invoke-virtual {v3}, Lteam/opay/pay/kyc/customer/KycSuccessStatusRsp;->b()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    goto :goto_1

    .line 103
    :cond_6
    move-object v3, v1

    .line 104
    :goto_1
    if-nez v3, :cond_7

    .line 105
    .line 106
    move-object v3, v2

    .line 107
    :cond_7
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lteam/opay/pay/kyc/customer/KycSuccessStatusRsp;

    .line 117
    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/KycSuccessStatusRsp;->a()Lteam/opay/pay/kyc/customer/SuccessExtensions;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/SuccessExtensions;->a()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_8
    if-nez v1, :cond_9

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_9
    move-object v2, v1

    .line 134
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->z(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->B(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic u(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->F(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->D(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lag8;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->C(Lag8;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)Lteam/opay/pay/kyc/levels/KycLevelDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->b:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lteam/opay/odialog/net/ADListResponse;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListResponse;->getAds()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lteam/opay/odialog/net/ADListItem;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method


# virtual methods
.method public final C(Lag8;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->c:Lteam/opay/pay/home/pay/ServicesRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/pay/ServicesRepository;->k()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lrma;

    .line 8
    .line 9
    invoke-direct {v1, p0, p2}, Lrma;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final E(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->g:Lcv7;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/kyc/customer/KycSuccessStatusReq;

    .line 9
    .line 10
    const-string v2, "REGISTER"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/customer/KycSuccessStatusReq;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcv7;->q(Lteam/opay/pay/kyc/customer/KycSuccessStatusReq;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lpma;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lpma;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->v()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L(Lag8;)V
    .locals 7
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->J()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v4, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v4, p0, v0, p1, v3}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel$getKycLevelInfo$1;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;Ljava/lang/String;Lag8;Ljr2;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->d:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    const-string v1, "REGISTER"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountRepository;->q(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final y(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/api/AnnouncementReq;

    .line 9
    .line 10
    const-string v2, "KYC1_result_banner"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;->H()Lfv;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2, v0}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-class v1, Lteam/opay/odialog/net/ADListResponse;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "200"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lqma;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lqma;-><init>(Lteam/opay/pay/kyc/upgrade1/task/OnboardingSuccessViewModel;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
