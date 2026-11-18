.class public final Lteam/opay/pay/settings/PaymentInstrumentsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "PaymentInstrumentsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/PaymentInstrumentsViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR#\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/pay/settings/PaymentInstrumentsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;",
        "paymentInstrumentsRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "t",
        "(Lag8;)V",
        "",
        "cardId",
        "Lkotlin/Function0;",
        "block",
        "x",
        "(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function0;)V",
        "b",
        "Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "w",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingLiveData",
        "",
        "Lteam/opay/core/api/b;",
        "d",
        "v",
        "cardsDataLivedata",
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
.field public final b:Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
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

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/b;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;
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
    const-string v0, "paymentInstrumentsRepository"

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
    iput-object p2, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->b:Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->y(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->u(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget-object v1, Lteam/opay/pay/settings/PaymentInstrumentsViewModel$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    :goto_1
    if-eq v0, v2, :cond_5

    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    if-eq v0, p0, :cond_3

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    sget-object p0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    const-string p1, ""

    .line 67
    .line 68
    :cond_4
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    iget-object p0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method public static final y(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-object p0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v2, v0, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, p0

    .line 32
    :goto_1
    if-nez v2, :cond_2

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    sget-object v3, Lteam/opay/pay/settings/PaymentInstrumentsViewModel$a;->a:[I

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    aget v2, v3, v2

    .line 43
    .line 44
    :goto_2
    const/4 v3, 0x2

    .line 45
    if-eq v2, v0, :cond_5

    .line 46
    .line 47
    if-eq v2, v3, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    sget-object p0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    const-string p1, ""

    .line 70
    .line 71
    :cond_4
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    new-instance v0, Lteam/opay/pay/settings/BindSuccessToRefreshPreviousPageEvent;

    .line 80
    .line 81
    invoke-direct {v0}, Lteam/opay/pay/settings/BindSuccessToRefreshPreviousPageEvent;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v0}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object v4, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 88
    .line 89
    const-string p3, "bind_success_to_refresh_previous_page_event"

    .line 90
    .line 91
    invoke-static {v4, p3, v1, v3, p0}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    new-instance p3, Lteam/opay/pay/settings/AddInstrumentNotify;

    .line 99
    .line 100
    invoke-direct {p3, p1, v1}, Lteam/opay/pay/settings/AddInstrumentNotify;-><init>(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p3}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Lteam/opay/pay/settings/AddInstrumentNotify;

    .line 107
    .line 108
    invoke-direct {v6, p1, v1}, Lteam/opay/pay/settings/AddInstrumentNotify;-><init>(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const/4 v8, 0x4

    .line 112
    const/4 v9, 0x0

    .line 113
    const-string v5, "add_card_success_key"

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p0
.end method


# virtual methods
.method public final t(Lag8;)V
    .locals 9
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
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->b:Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    .line 7
    .line 8
    new-instance v8, Lteam/opay/core/api/PaymentInstrumentListRequest;

    .line 9
    .line 10
    const-string v1, "CARD"

    .line 11
    .line 12
    const-string v2, "ACCOUNT"

    .line 13
    .line 14
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v5, "card"

    .line 27
    .line 28
    move-object v1, v8

    .line 29
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/api/PaymentInstrumentListRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v8}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->i(Lteam/opay/core/api/PaymentInstrumentListRequest;)Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lbfb;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lbfb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final v()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/core/api/b;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cardId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/settings/PaymentInstrumentsViewModel;->b:Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lteam/opay/core/payment/instruments/PaymentInstrumentsRepository;->k(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcfb;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p3}, Lcfb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
