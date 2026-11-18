.class public final Lteam/opay/pay/cashier/OrderStatusPolling;
.super Lteam/opay/pay/cashier/IOrderStatusPolling;
.source "OrderStatusPolling.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/OrderStatusPolling$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 \u00142\u00020\u0001:\u0001*B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0016R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\"\u0010\'\u001a\u00020\u000f8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\u0015R\u0014\u0010)\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/pay/cashier/OrderStatusPolling;",
        "Lteam/opay/pay/cashier/IOrderStatusPolling;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "viewModel",
        "",
        "retryCount",
        "Lkotlin/Function0;",
        "",
        "loading",
        "Lkotlin/Function1;",
        "",
        "polling",
        "<init>",
        "(Landroidx/lifecycle/AndroidViewModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "orderNo",
        "",
        "rePolling",
        "b",
        "(Ljava/lang/String;Z)V",
        "finished",
        "i",
        "(Z)V",
        "Landroidx/lifecycle/AndroidViewModel;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "Lkotlinx/coroutines/l;",
        "e",
        "Lkotlinx/coroutines/l;",
        "loadingJob",
        "f",
        "I",
        "statusPollingCount",
        "g",
        "Z",
        "l",
        "()Z",
        "m",
        "pollingFinished",
        "h",
        "maxPollingCount",
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
.field public static final i:Lteam/opay/pay/cashier/OrderStatusPolling$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:I


# instance fields
.field public final b:Landroidx/lifecycle/AndroidViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/OrderStatusPolling$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/OrderStatusPolling$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/OrderStatusPolling;->i:Lteam/opay/pay/cashier/OrderStatusPolling$Companion;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x320

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-wide/16 v2, 0x640

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-wide/16 v3, 0xc80

    .line 28
    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-wide/16 v4, 0x1900

    .line 34
    .line 35
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-wide/16 v5, 0x3200

    .line 40
    .line 41
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/16 v6, 0x8

    .line 46
    .line 47
    new-array v6, v6, [Ljava/lang/Long;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    aput-object v0, v6, v7

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aput-object v1, v6, v0

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    aput-object v2, v6, v0

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    aput-object v3, v6, v0

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    aput-object v4, v6, v0

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    aput-object v5, v6, v0

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    aput-object v5, v6, v0

    .line 69
    .line 70
    const/4 v0, 0x7

    .line 71
    aput-object v5, v6, v0

    .line 72
    .line 73
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lteam/opay/pay/cashier/OrderStatusPolling;->j:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    sput v0, Lteam/opay/pay/cashier/OrderStatusPolling;->k:I

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/AndroidViewModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/AndroidViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loading"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "polling"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lteam/opay/pay/cashier/IOrderStatusPolling;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->b:Landroidx/lifecycle/AndroidViewModel;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->c:Lkotlin/jvm/functions/Function0;

    .line 5
    iput-object p4, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->d:Lkotlin/jvm/functions/Function1;

    .line 6
    sget p1, Lteam/opay/pay/cashier/OrderStatusPolling;->k:I

    if-le p2, p1, :cond_0

    move p2, p1

    :cond_0
    iput p2, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/AndroidViewModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0x8

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/pay/cashier/OrderStatusPolling;-><init>(Landroidx/lifecycle/AndroidViewModel;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic e(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/OrderStatusPolling;->k(Z)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/cashier/OrderStatusPolling;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/OrderStatusPolling;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h(Lteam/opay/pay/cashier/OrderStatusPolling;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lteam/opay/pay/cashier/OrderStatusPolling;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/OrderStatusPolling;->i(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final k(Z)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "finished = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->e:Lkotlinx/coroutines/l;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {p2, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0, v0, v2, v1}, Lteam/opay/pay/cashier/OrderStatusPolling;->j(Lteam/opay/pay/cashier/OrderStatusPolling;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/IOrderStatusPolling;->a()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget p2, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->f:I

    .line 29
    .line 30
    iget v3, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->h:I

    .line 31
    .line 32
    if-ge p2, v3, :cond_3

    .line 33
    .line 34
    iget-object p2, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->c:Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->b:Landroidx/lifecycle/AndroidViewModel;

    .line 40
    .line 41
    invoke-static {p2}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v6, Lteam/opay/pay/cashier/OrderStatusPolling$pollTransactionStatus$1;

    .line 46
    .line 47
    invoke-direct {v6, p0, p1, v1}, Lteam/opay/pay/cashier/OrderStatusPolling$pollTransactionStatus$1;-><init>(Lteam/opay/pay/cashier/OrderStatusPolling;Ljava/lang/String;Ljr2;)V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->e:Lkotlinx/coroutines/l;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget p1, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->f:I

    .line 64
    .line 65
    add-int/2addr p1, v2

    .line 66
    iput p1, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->f:I

    .line 67
    .line 68
    iget p2, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->h:I

    .line 69
    .line 70
    if-lt p1, p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lteam/opay/pay/cashier/OrderStatusPolling;->i(Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0, v2}, Lteam/opay/pay/cashier/OrderStatusPolling;->i(Z)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    return-void
.end method

.method public final i(Z)V
    .locals 4

    .line 1
    sget-object v0, Lxk8;->a:Lxk8;

    .line 2
    .line 3
    new-instance v1, Lkwa;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lkwa;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2, v3}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->f:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/OrderStatusPolling;->m(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/cashier/OrderStatusPolling;->g:Z

    .line 2
    .line 3
    return-void
.end method
