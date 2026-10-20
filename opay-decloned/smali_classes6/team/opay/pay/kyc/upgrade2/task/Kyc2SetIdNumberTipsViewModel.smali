.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "Kyc2SetIdNumberTipsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000cJ!\u0010\u0012\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "kycLevelDao",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/levels/KycLevelDao;)V",
        "",
        "w",
        "()Ljava/lang/String;",
        "x",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "",
        "block",
        "t",
        "(Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "c",
        "Lteam/opay/pay/kyc/levels/KycLevelDao;",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "d",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "getTaskNodeData",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "y",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNodeData",
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
.field public final b:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/kyc/levels/KycLevelDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/levels/KycLevelDao;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/kyc/levels/KycLevelDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->b:Lteam/opay/core/android/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p3, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->c:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/kyc/levels/KycLevel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->v(Lteam/opay/pay/kyc/levels/KycLevel;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->u(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final u(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->c:Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/KycLevelDao;->c()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 36
    .line 37
    invoke-virtual {v3}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "2"

    .line 42
    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move-object v1, v2

    .line 50
    :cond_2
    check-cast v1, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 51
    .line 52
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->b:Lteam/opay/core/android/arch/AppExecutors;

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance v0, Lot7;

    .line 59
    .line 60
    invoke-direct {v0, v1, p1}, Lot7;-><init>(Lteam/opay/pay/kyc/levels/KycLevel;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static final v(Lteam/opay/pay/kyc/levels/KycLevel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final t(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/kyc/levels/KycLevel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->b:Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lnt7;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lnt7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->d:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getKyc1to2IdNumberAmountLimitContent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->d:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getKyc1to2IdNumberAmountContent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final y(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SetIdNumberTipsViewModel;->d:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method
