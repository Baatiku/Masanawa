.class public final Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "PaymentInstrumentsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\n\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u00011B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000b0\n\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\'\u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00190\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\r\u0010$\u001a\u00020!\u00a2\u0006\u0004\u0008$\u0010#R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010%R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010)R$\u00100\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00118B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/core/api/d;",
        "paymentInstrumentsWebService",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/d;)V",
        "Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;",
        "instrumentInput",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/BindInstrumentRes;",
        "f",
        "(Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;)Landroidx/lifecycle/LiveData;",
        "",
        "id",
        "",
        "k",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/graphql/UserBindCardInfo;",
        "j",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/PaymentInstrumentListRequest;",
        "request",
        "",
        "Lteam/opay/core/api/b;",
        "i",
        "(Lteam/opay/core/api/PaymentInstrumentListRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/graphql/OrderFeeRequest;",
        "Lteam/opay/core/api/graphql/OrderFeeResponse;",
        "h",
        "(Lteam/opay/core/api/graphql/OrderFeeRequest;)Landroidx/lifecycle/LiveData;",
        "",
        "d",
        "()V",
        "g",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Lteam/opay/core/api/d;",
        "",
        "J",
        "cacheUpdateTime",
        "value",
        "getStaleCache",
        "()Z",
        "l",
        "(Z)V",
        "staleCache",
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
.field public static final g:Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:J


# instance fields
.field public final d:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/api/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->g:Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0xa

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->h:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/core/api/d;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "paymentInstrumentsWebService"

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
    iput-object p1, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->e:Lteam/opay/core/api/d;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->f:J

    .line 23
    .line 24
    return-void
.end method

.method public static final synthetic e(Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;)Lteam/opay/core/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->e:Lteam/opay/core/api/d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/BindInstrumentRes;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "instrumentInput"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$a;-><init>(Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->l(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h(Lteam/opay/core/api/graphql/OrderFeeRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/graphql/OrderFeeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/OrderFeeRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/OrderFeeResponse;",
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
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$b;-><init>(Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Lteam/opay/core/api/graphql/OrderFeeRequest;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final i(Lteam/opay/core/api/PaymentInstrumentListRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/core/api/PaymentInstrumentListRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/PaymentInstrumentListRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/b;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$c;-><init>(Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Lteam/opay/core/api/PaymentInstrumentListRequest;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/UserBindCardInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$d;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$d;-><init>(Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final k(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$e;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository$e;-><init>(Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final l(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->f:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lvke;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->f:J

    .line 15
    .line 16
    :goto_0
    return-void
.end method
