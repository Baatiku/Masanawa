.class public final Lteam/opay/pay/cashier/result/ShareContactViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ShareContactViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J;\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u001a\u0010\u0010\u001a\u0016\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00082\u001a\u0010\u0010\u001a\u0016\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/ShareContactViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "contactRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V",
        "Lag8;",
        "owner",
        "",
        "needSubList",
        "Lkotlin/Function1;",
        "",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "",
        "callBack",
        "u",
        "(Lag8;ZLkotlin/jvm/functions/Function1;)V",
        "w",
        "(Lag8;Lkotlin/jvm/functions/Function1;)V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/transfer/contact/TransferContactRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/TransferContactRepository;
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
    const-string v0, "contactRepository"

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
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareContactViewModel;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/cashier/result/ShareContactViewModel;->c:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic r(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/result/ShareContactViewModel;->y(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/cashier/result/ShareContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/cashier/result/ShareContactViewModel;->x(Lteam/opay/pay/cashier/result/ShareContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/ShareContactViewModel;->v(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final v(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final x(Lteam/opay/pay/cashier/result/ShareContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 36
    .line 37
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;-><init>(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lteam/opay/pay/cashier/result/ShareContactViewModel;->c:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {p0, v1, v3, v0, v2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->w(Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v0, Lold;

    .line 60
    .line 61
    invoke-direct {v0, p2, p3}, Lold;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method public static final y(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    if-eqz v1, :cond_6

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 41
    .line 42
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->f()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v6, v5

    .line 63
    check-cast v6, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 64
    .line 65
    invoke-virtual {v6}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v5, v0

    .line 81
    :goto_2
    check-cast v5, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object v5, v0

    .line 85
    :goto_3
    if-nez v5, :cond_1

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    if-eqz p2, :cond_7

    .line 96
    .line 97
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_4

    .line 102
    :cond_7
    move-object p1, v0

    .line 103
    :goto_4
    sget-object p2, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 104
    .line 105
    if-ne p1, p2, :cond_8

    .line 106
    .line 107
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    return-object p0
.end method


# virtual methods
.method public final u(Lag8;ZLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1    # Lag8;
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
            "Lag8;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callBack"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lmld;

    .line 17
    .line 18
    invoke-direct {v1, p3}, Lmld;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v5, Lteam/opay/pay/cashier/result/ShareContactViewModel$getLocalMobiles$2;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-direct {v5, p0, p2, v0, p1}, Lteam/opay/pay/cashier/result/ShareContactViewModel$getLocalMobiles$2;-><init>(Lteam/opay/pay/cashier/result/ShareContactViewModel;ZLandroidx/lifecycle/MutableLiveData;Ljr2;)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final w(Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callBack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lnld;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lnld;-><init>(Lteam/opay/pay/cashier/result/ShareContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p0, p1, p2, v0}, Lteam/opay/pay/cashier/result/ShareContactViewModel;->u(Lag8;ZLkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
