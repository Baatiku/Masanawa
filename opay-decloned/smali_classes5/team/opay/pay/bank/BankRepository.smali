.class public final Lteam/opay/pay/bank/BankRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "BankRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u0011\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u00100\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J+\u0010\u0013\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u00100\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\r0\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J)\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\n2\u0010\u0010\u001a\u001a\u000c\u0012\u0004\u0012\u00020\u000f0\u000ej\u0002`\u0010H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u001dR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R \u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\'0&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R \u0010-\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020+0&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010)R\u0016\u0010.\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010$\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/bank/BankRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lxl0;",
        "bankWebService",
        "Lteam/opay/pay/bank/BanksDao;",
        "banksDao",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lxl0;Lteam/opay/pay/bank/BanksDao;)V",
        "Lteam/opay/core/api/Country;",
        "country",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "",
        "Lteam/opay/pay/bank/Bank;",
        "Lteam/opay/pay/bank/BankList;",
        "k",
        "(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;",
        "l",
        "Lteam/opay/pay/bank/BankFreeTimesResponse;",
        "j",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "d",
        "()V",
        "response",
        "m",
        "(Lteam/opay/core/api/Country;Ljava/util/List;)V",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lxl0;",
        "f",
        "Lteam/opay/pay/bank/BanksDao;",
        "",
        "g",
        "J",
        "REFRESH_TIMEOUT_MS",
        "",
        "Lteam/opay/pay/bank/BankFieldInfo;",
        "h",
        "Ljava/util/Map;",
        "fields",
        "Lteam/opay/pay/bank/BankListInfo;",
        "i",
        "banks",
        "lastBankReqTime",
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
.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lxl0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/pay/bank/BanksDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:J

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lteam/opay/pay/bank/Bank;",
            "Lteam/opay/pay/bank/BankFieldInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lteam/opay/core/api/Country;",
            "Lteam/opay/pay/bank/BankListInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:J


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lxl0;Lteam/opay/pay/bank/BanksDao;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxl0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/bank/BanksDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bankWebService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/core/android/arch/BaseRepository;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/bank/BankRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/bank/BankRepository;->e:Lxl0;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/pay/bank/BankRepository;->f:Lteam/opay/pay/bank/BanksDao;

    .line 19
    .line 20
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 p2, 0x18

    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lteam/opay/pay/bank/BankRepository;->g:J

    .line 29
    .line 30
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/bank/BankRepository;->h:Ljava/util/Map;

    .line 36
    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/bank/BankRepository;->i:Ljava/util/Map;

    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic e(Lteam/opay/pay/bank/BankRepository;)Lxl0;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/bank/BankRepository;->e:Lxl0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/bank/BankRepository;)Lteam/opay/pay/bank/BanksDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/bank/BankRepository;->f:Lteam/opay/pay/bank/BanksDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/pay/bank/BankRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/bank/BankRepository;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic h(Lteam/opay/pay/bank/BankRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/bank/BankRepository;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic i(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/bank/BankRepository;->m(Lteam/opay/core/api/Country;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository;->i:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/bank/BankFreeTimesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/bank/BankRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/bank/BankRepository$a;-><init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final k(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/Country;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "country"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/bank/BankRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/bank/BankRepository$b;-><init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundResource;->k()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final l(Lteam/opay/core/api/Country;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/Country;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "country"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/bank/BankRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/bank/BankRepository$c;-><init>(Lteam/opay/pay/bank/BankRepository;Lteam/opay/core/api/Country;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final m(Lteam/opay/core/api/Country;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/Country;",
            "Ljava/util/List<",
            "Lteam/opay/pay/bank/Bank;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/bank/BankRepository;->i:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/bank/BankListInfo;

    .line 4
    .line 5
    invoke-static {}, Lvke;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-direct {v1, p2, v2, v3}, Lteam/opay/pay/bank/BankListInfo;-><init>(Ljava/util/List;J)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/pay/bank/BankRepository;->f:Lteam/opay/pay/bank/BanksDao;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lteam/opay/pay/bank/BanksDao;->d(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lteam/opay/pay/bank/BankRepository;->j:J

    .line 27
    .line 28
    return-void
.end method
