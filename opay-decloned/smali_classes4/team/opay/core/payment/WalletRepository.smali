.class public final Lteam/opay/core/payment/WalletRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "WalletRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/payment/WalletRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 72\u00020\u0001:\u00018B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ#\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000f0\u000e2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00100%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010.\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010+R\u001a\u00101\u001a\u0008\u0012\u0004\u0012\u00020/0%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010\'R\u001a\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00140%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\'R\u0014\u00104\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00103R\u0014\u00106\u001a\u00020/8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u00105\u00a8\u00069"
    }
    d2 = {
        "Lteam/opay/core/payment/WalletRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lc5g;",
        "walletWebService",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lc5g;Lteam/opay/core/api/e;)V",
        "",
        "forceRefresh",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/Wallet;",
        "o",
        "(Z)Landroidx/lifecycle/LiveData;",
        "shouldFetch",
        "Lteam/opay/core/api/graphql/HomeBalance;",
        "m",
        "",
        "d",
        "()V",
        "q",
        "Landroid/app/Application;",
        "e",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "f",
        "Lc5g;",
        "g",
        "Lteam/opay/core/api/e;",
        "Lxt;",
        "h",
        "Lxt;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "walletData",
        "",
        "j",
        "J",
        "walletRefreshTime",
        "k",
        "accountWalletRefreshTime",
        "Lteam/opay/core/api/AccountWallet;",
        "l",
        "accountWalletData",
        "homeBalanceLiveData",
        "()Lteam/opay/core/api/Wallet;",
        "emptyWallet",
        "()Lteam/opay/core/api/AccountWallet;",
        "emptyAccountWallet",
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
.field public static final n:Lteam/opay/core/payment/WalletRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:J

.field public static final p:J


# instance fields
.field public final d:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lc5g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lxt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/Wallet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:J

.field public k:J

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/AccountWallet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/HomeBalance;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/payment/WalletRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/payment/WalletRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/payment/WalletRepository;->n:Lteam/opay/core/payment/WalletRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x1e

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lteam/opay/core/payment/WalletRepository;->o:J

    .line 18
    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v1, 0x5

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lteam/opay/core/payment/WalletRepository;->p:J

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lc5g;Lteam/opay/core/api/e;)V
    .locals 18
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lc5g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "application"

    .line 12
    .line 13
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "appExecutors"

    .line 17
    .line 18
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v5, "walletWebService"

    .line 22
    .line 23
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "sessionProvider"

    .line 27
    .line 28
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lteam/opay/core/payment/WalletRepository;->d:Landroid/app/Application;

    .line 35
    .line 36
    iput-object v2, v0, Lteam/opay/core/payment/WalletRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 37
    .line 38
    iput-object v3, v0, Lteam/opay/core/payment/WalletRepository;->f:Lc5g;

    .line 39
    .line 40
    iput-object v4, v0, Lteam/opay/core/payment/WalletRepository;->g:Lteam/opay/core/api/e;

    .line 41
    .line 42
    sget-object v2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lteam/opay/core/payment/WalletRepository;->h:Lxt;

    .line 49
    .line 50
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lteam/opay/core/payment/WalletRepository;->i:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v0, Lteam/opay/core/payment/WalletRepository;->j:J

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, v0, Lteam/opay/core/payment/WalletRepository;->k:J

    .line 68
    .line 69
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v2, v0, Lteam/opay/core/payment/WalletRepository;->l:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v3, v0, Lteam/opay/core/payment/WalletRepository;->m:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/payment/WalletRepository;->l()Lteam/opay/core/api/Wallet;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/payment/WalletRepository;->k()Lteam/opay/core/api/AccountWallet;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lteam/opay/core/api/graphql/HomeBalance;

    .line 98
    .line 99
    const/16 v16, 0x600

    .line 100
    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v12, 0x0

    .line 111
    const/4 v13, 0x0

    .line 112
    const/4 v14, 0x0

    .line 113
    const/4 v15, 0x0

    .line 114
    move-object v4, v1

    .line 115
    invoke-direct/range {v4 .. v17}, Lteam/opay/core/api/graphql/HomeBalance;-><init>(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/graphql/WalletAccountBalance;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static final synthetic e(Lteam/opay/core/payment/WalletRepository;)Lxt;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/payment/WalletRepository;->h:Lxt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f()J
    .locals 2

    .line 1
    sget-wide v0, Lteam/opay/core/payment/WalletRepository;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g(Lteam/opay/core/payment/WalletRepository;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/payment/WalletRepository;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/core/payment/WalletRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/core/payment/WalletRepository;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic i(Lteam/opay/core/payment/WalletRepository;)Lc5g;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/payment/WalletRepository;->f:Lc5g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/core/payment/WalletRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/core/payment/WalletRepository;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic n(Lteam/opay/core/payment/WalletRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
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
    invoke-virtual {p0, p1}, Lteam/opay/core/payment/WalletRepository;->m(Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic p(Lteam/opay/core/payment/WalletRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/core/payment/WalletRepository;->o(Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/payment/WalletRepository;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository;->i:Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/payment/WalletRepository;->l()Lteam/opay/core/api/Wallet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository;->l:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/payment/WalletRepository;->k()Lteam/opay/core/api/AccountWallet;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final k()Lteam/opay/core/api/AccountWallet;
    .locals 16

    .line 1
    new-instance v15, Lteam/opay/core/api/AccountWallet;

    .line 2
    .line 3
    const-string v13, ""

    .line 4
    .line 5
    const/4 v14, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    move-object v0, v15

    .line 19
    invoke-direct/range {v0 .. v14}, Lteam/opay/core/api/AccountWallet;-><init>(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Ljava/lang/String;Lteam/opay/core/api/graphql/OverDraftDataResponse;)V

    .line 20
    .line 21
    .line 22
    return-object v15
.end method

.method public final l()Lteam/opay/core/api/Wallet;
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository;->g:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v8, Lteam/opay/core/api/Wallet;

    .line 12
    .line 13
    sget-object v1, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v0}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v0}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v1, v0}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v1, v0}, Lteam/opay/core/android/money/MoneyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v1, v8

    .line 37
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/api/Wallet;-><init>(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;I)V

    .line 38
    .line 39
    .line 40
    return-object v8
.end method

.method public final m(Z)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/HomeBalance;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/core/payment/WalletRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v0, Lteam/opay/core/payment/WalletRepository$a;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lteam/opay/core/payment/WalletRepository$a;-><init>(Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final o(Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/Wallet;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/WalletRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/core/payment/WalletRepository$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/core/payment/WalletRepository$b;-><init>(Lteam/opay/core/payment/WalletRepository;ZLteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final q()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lteam/opay/core/payment/WalletRepository;->j:J

    .line 6
    .line 7
    return-void
.end method
