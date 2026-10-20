.class public final Lcashier/util/PayOrderStatusPolling;
.super Ljava/lang/Object;
.source "PayOrderStatusPolling.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001cR \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001dR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\"\u0010%\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\'R\u0016\u0010+\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u001c\u0010,\u001a\u00020\u00148B@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008#\u0010*\u001a\u0004\u0008\u001e\u0010\u0016R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\"\u00101\u001a\u00020\u000c8F@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010 \u001a\u0004\u0008\u001f\u0010\"\"\u0004\u00082\u0010$\u00a8\u00063"
    }
    d2 = {
        "Lcashier/util/PayOrderStatusPolling;",
        "",
        "Landroidx/lifecycle/AndroidViewModel;",
        "viewModel",
        "Lcashier/util/PollingConfigData;",
        "pollingConfig",
        "Lkotlin/Function0;",
        "",
        "loading",
        "Lkotlin/Function1;",
        "",
        "polling",
        "",
        "inTopup",
        "<init>",
        "(Landroidx/lifecycle/AndroidViewModel;Lcashier/util/PollingConfigData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "orderNo",
        "rePolling",
        "g",
        "(Ljava/lang/String;Z)V",
        "",
        "c",
        "()I",
        "d",
        "a",
        "Landroidx/lifecycle/AndroidViewModel;",
        "b",
        "Lcashier/util/PollingConfigData;",
        "Lkotlin/jvm/functions/Function0;",
        "Lkotlin/jvm/functions/Function1;",
        "e",
        "f",
        "Z",
        "getCanceled",
        "()Z",
        "i",
        "(Z)V",
        "canceled",
        "Lkotlinx/coroutines/l;",
        "Lkotlinx/coroutines/l;",
        "loadingJob",
        "h",
        "I",
        "sumSeconds",
        "intervalSeconds",
        "",
        "j",
        "J",
        "startTime",
        "pollingFinished",
        "setPollingFinished",
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
.field public final a:Landroidx/lifecycle/AndroidViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcashier/util/PollingConfigData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field public final e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Landroidx/lifecycle/AndroidViewModel;Lcashier/util/PollingConfigData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/AndroidViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcashier/util/PollingConfigData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            "Lcashier/util/PollingConfigData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loading"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "polling"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "inTopup"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcashier/util/PayOrderStatusPolling;->a:Landroidx/lifecycle/AndroidViewModel;

    .line 25
    .line 26
    iput-object p2, p0, Lcashier/util/PayOrderStatusPolling;->b:Lcashier/util/PollingConfigData;

    .line 27
    .line 28
    iput-object p3, p0, Lcashier/util/PayOrderStatusPolling;->c:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    iput-object p4, p0, Lcashier/util/PayOrderStatusPolling;->d:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    iput-object p5, p0, Lcashier/util/PayOrderStatusPolling;->e:Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Lcashier/util/PollingConfigData;->d()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 p1, 0x1e

    .line 48
    .line 49
    :goto_0
    iput p1, p0, Lcashier/util/PayOrderStatusPolling;->h:I

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcashier/util/PayOrderStatusPolling;->i:I

    .line 53
    .line 54
    return-void
.end method

.method public static final synthetic a(Lcashier/util/PayOrderStatusPolling;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/util/PayOrderStatusPolling;->e()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lcashier/util/PayOrderStatusPolling;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcashier/util/PayOrderStatusPolling;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcashier/util/PayOrderStatusPolling;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcashier/util/PayOrderStatusPolling;->g(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/util/PayOrderStatusPolling;->b:Lcashier/util/PollingConfigData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcashier/util/PollingConfigData;->a()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x3

    .line 17
    :goto_0
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/util/PayOrderStatusPolling;->b:Lcashier/util/PollingConfigData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcashier/util/PollingConfigData;->b()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcashier/util/PayOrderStatusPolling;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcashier/util/PayOrderStatusPolling;->d()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcashier/util/PayOrderStatusPolling;->d()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcashier/util/PayOrderStatusPolling;->c()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcashier/util/PayOrderStatusPolling;->c()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    return v1
.end method

.method public final f()Z
    .locals 6

    .line 1
    iget v0, p0, Lcashier/util/PayOrderStatusPolling;->h:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    mul-long v0, v0, v2

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcashier/util/PayOrderStatusPolling;->j:J

    .line 13
    .line 14
    sub-long/2addr v2, v4

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 12
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
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcashier/util/PayOrderStatusPolling;->f:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcashier/util/PayOrderStatusPolling;->g:Lkotlinx/coroutines/l;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcashier/util/PayOrderStatusPolling;->f:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lcashier/util/PayOrderStatusPolling;->j:J

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    :goto_0
    move-wide v4, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-wide/16 v0, 0x3e8

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object p2, p0, Lcashier/util/PayOrderStatusPolling;->c:Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcashier/util/PayOrderStatusPolling;->a:Landroidx/lifecycle/AndroidViewModel;

    .line 46
    .line 47
    invoke-static {p2}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v9, Lcashier/util/PayOrderStatusPolling$pollTransactionStatus$1;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v2, v9

    .line 55
    move-object v3, p0

    .line 56
    move-object v6, p1

    .line 57
    invoke-direct/range {v2 .. v7}, Lcashier/util/PayOrderStatusPolling$pollTransactionStatus$1;-><init>(Lcashier/util/PayOrderStatusPolling;JLjava/lang/String;Ljr2;)V

    .line 58
    .line 59
    .line 60
    const/4 v10, 0x3

    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v6, p2

    .line 64
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcashier/util/PayOrderStatusPolling;->g:Lkotlinx/coroutines/l;

    .line 69
    .line 70
    return-void
.end method

.method public final i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/util/PayOrderStatusPolling;->f:Z

    .line 2
    .line 3
    return-void
.end method
