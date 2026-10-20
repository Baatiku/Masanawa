.class public final Lteam/opay/pay/payment/PaymentRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "PaymentRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J!\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J!\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J!\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J)\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0\u000c2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ)\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0\u000c2\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ)\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\r0\u000c2\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u000f\u0010 \u001a\u00020\u001fH\u0014\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010%R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/payment/PaymentRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;",
        "electricityPlanDao",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;)V",
        "Lteam/opay/pay/cashier/TransferPreOrder;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "l",
        "(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;",
        "g",
        "f",
        "i",
        "j",
        "",
        "pin",
        "orderId",
        "Lteam/opay/core/api/GraphQL$OrderStatus;",
        "o",
        "(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "otp",
        "m",
        "phone",
        "n",
        "",
        "d",
        "()V",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "e",
        "Landroid/app/Application;",
        "Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "paymentMetaRefreshTime",
        "Lfv;",
        "h",
        "Lfv;",
        "api",
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

.field public final e:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Landroid/app/Application;Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;)V
    .locals 2
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;
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
    const-string v0, "app"

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
    iput-object p1, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/payment/PaymentRepository;->e:Landroid/app/Application;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/pay/payment/PaymentRepository;->f:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 19
    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lteam/opay/pay/payment/PaymentRepository;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    sget-object p1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 32
    .line 33
    const-class p3, Lfv;

    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lfv;

    .line 40
    .line 41
    iput-object p1, p0, Lteam/opay/pay/payment/PaymentRepository;->h:Lfv;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/payment/PaymentRepository;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/PaymentRepository;->k(Lteam/opay/pay/payment/PaymentRepository;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lteam/opay/pay/payment/PaymentRepository;)Lfv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/PaymentRepository;->h:Lfv;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final k(Lteam/opay/pay/payment/PaymentRepository;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/PaymentRepository;->f:Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/electricity/kenya/ElectricityPlanDao;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/android/arch/BaseRepository;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lufb;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lufb;-><init>(Lteam/opay/pay/payment/PaymentRepository;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final f(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/PaymentRepository$a;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final g(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/PaymentRepository$b;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final i(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/PaymentRepository$c;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final j(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/PaymentRepository$d;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final l(Lteam/opay/pay/cashier/TransferPreOrder;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/TransferPreOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderInfo;",
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
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$e;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/payment/PaymentRepository$e;-><init>(Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final m(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "otp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orderId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$f;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2, v0}, Lteam/opay/pay/payment/PaymentRepository$f;-><init>(Lteam/opay/pay/payment/PaymentRepository;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orderId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$g;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2, v0}, Lteam/opay/pay/payment/PaymentRepository$g;-><init>(Lteam/opay/pay/payment/PaymentRepository;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$OrderStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "pin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orderId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/PaymentRepository;->d:Lteam/opay/core/android/arch/AppExecutors;

    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/payment/PaymentRepository$h;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2, v0}, Lteam/opay/pay/payment/PaymentRepository$h;-><init>(Lteam/opay/pay/payment/PaymentRepository;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
