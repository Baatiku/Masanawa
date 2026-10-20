.class public final Lteam/opay/pay/cashier/CashierRepository;
.super Lteam/opay/core/android/arch/BaseRepository;
.source "CashierRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000b0\n2\u0006\u0010\t\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000b0\n2\u0006\u0010\t\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ!\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u000b0\n2\u0006\u0010\u001c\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ!\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u000b0\n2\u0006\u0010\u001f\u001a\u00020\u0017\u00a2\u0006\u0004\u0008!\u0010\u001bJ!\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u000b0\n2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008#\u0010\u001bJ!\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0\u000b0\n2\u0006\u0010\t\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/cashier/CashierRepository;",
        "Lteam/opay/core/android/arch/BaseRepository;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V",
        "Lteam/opay/pay/cashier/OrderInput;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/cashier/OrderInfo;",
        "h",
        "(Lteam/opay/pay/cashier/OrderInput;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/cashier/result/OrderRequest;",
        "Lteam/opay/pay/cashier/OrderResponse;",
        "j",
        "(Lteam/opay/pay/cashier/result/OrderRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/cashier/result/OrderStatusRequest;",
        "Lteam/opay/pay/cashier/result/PaymentResponse;",
        "k",
        "(Lteam/opay/pay/cashier/result/OrderStatusRequest;)Landroidx/lifecycle/LiveData;",
        "",
        "orderId",
        "Lteam/opay/pay/cashier/result/Order3DSResponse;",
        "i",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "orderNo",
        "Lteam/opay/pay/cashier/result/CallBack3DSResponse;",
        "g",
        "cardId",
        "Lteam/opay/pay/api/CardStateResponse;",
        "l",
        "",
        "m",
        "Lteam/opay/core/api/BeforeCheckReq;",
        "",
        "f",
        "(Lteam/opay/core/api/BeforeCheckReq;)Landroidx/lifecycle/LiveData;",
        "d",
        "Landroid/app/Application;",
        "e",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "Lgv;",
        "Lgv;",
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
.field public final d:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lgv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appExecutors"

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
    iput-object p1, p0, Lteam/opay/pay/cashier/CashierRepository;->d:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 17
    .line 18
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 19
    .line 20
    const-class v0, Lgv;

    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lgv;

    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/cashier/CashierRepository;->f:Lgv;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic e(Lteam/opay/pay/cashier/CashierRepository;)Lgv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/CashierRepository;->f:Lgv;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final f(Lteam/opay/core/api/BeforeCheckReq;)Landroidx/lifecycle/LiveData;
    .locals 2
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
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$a;-><init>(Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/core/api/BeforeCheckReq;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final g(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
            "Lteam/opay/pay/cashier/result/CallBack3DSResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$b;-><init>(Lteam/opay/pay/cashier/CashierRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final h(Lteam/opay/pay/cashier/OrderInput;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/OrderInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/OrderInput;",
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
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$c;-><init>(Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/pay/cashier/OrderInput;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final i(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
            "Lteam/opay/pay/cashier/result/Order3DSResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "orderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$d;-><init>(Lteam/opay/pay/cashier/CashierRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final j(Lteam/opay/pay/cashier/result/OrderRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/result/OrderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/result/OrderRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/OrderResponse;",
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
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$e;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$e;-><init>(Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/pay/cashier/result/OrderRequest;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final k(Lteam/opay/pay/cashier/result/OrderStatusRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/pay/cashier/result/OrderStatusRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashier/result/OrderStatusRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/cashier/result/PaymentResponse;",
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
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$f;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$f;-><init>(Lteam/opay/pay/cashier/CashierRepository;Lteam/opay/pay/cashier/result/OrderStatusRequest;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final l(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
            "Lteam/opay/pay/api/CardStateResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cardId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$g;-><init>(Lteam/opay/pay/cashier/CashierRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

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

.method public final m(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
    const-string v0, "orderId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/cashier/CashierRepository;->e:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/cashier/CashierRepository$h;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/pay/cashier/CashierRepository$h;-><init>(Lteam/opay/pay/cashier/CashierRepository;Ljava/lang/String;Lteam/opay/core/android/arch/AppExecutors;)V

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
