.class public final Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;
.super Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsFragment;
.source "HomeSavingDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsFragment<",
        "Lee6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001b\u0010)\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lee6;",
        "<init>",
        "()V",
        "",
        "a0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "",
        "W",
        "()Ljava/lang/CharSequence;",
        "f0",
        "Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;",
        "p",
        "Lid8;",
        "Z",
        "()Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;",
        "viewModel",
        "Lteam/opay/pay/util/OpayLoadingWindow;",
        "q",
        "Y",
        "()Lteam/opay/pay/util/OpayLoadingWindow;",
        "loadingWindow",
        "Lteam/opay/core/settings/SettingsStorage;",
        "r",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "",
        "s",
        "Ljava/lang/String;",
        "savingAmount",
        "Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;",
        "t",
        "X",
        "()Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;",
        "adapter",
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
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/core/settings/SettingsStorage;

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$1;->INSTANCE:Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->p:Lid8;

    .line 49
    .line 50
    new-instance v0, Lj17;

    .line 51
    .line 52
    invoke-direct {v0}, Lj17;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->q:Lid8;

    .line 60
    .line 61
    new-instance v0, Lk17;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lk17;-><init>(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->t:Lid8;

    .line 71
    .line 72
    return-void
.end method

.method public static synthetic O(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->e0(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->U(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->V(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->b0(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->d0(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T()Lteam/opay/pay/util/OpayLoadingWindow;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->c0()Lteam/opay/pay/util/OpayLoadingWindow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final U(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->r:Lteam/opay/core/settings/SettingsStorage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "settingsStorage"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;-><init>(Lteam/opay/core/settings/SettingsStorage;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ln17;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Ln17;-><init>(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static final V(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "getData(...)"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p2, p1, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    check-cast p1, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, p3

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getAction()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    :cond_1
    if-nez p3, :cond_2

    .line 30
    .line 31
    const-string p3, ""

    .line 32
    .line 33
    :cond_2
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 34
    .line 35
    const-class p2, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/Hilt_HomeSavingDetailsFragment;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const-string p2, "saving"

    .line 53
    .line 54
    invoke-interface {p1, p0, p3, p2}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method

.method private final Z()Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lee6;

    .line 6
    .line 7
    iget-object v0, v0, Lee6;->f:Lgia;

    .line 8
    .line 9
    invoke-virtual {v0}, Lgia;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->Z()Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/AccountNewViewModel;->t()Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Li17;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Li17;-><init>(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final b0(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->Y()Lteam/opay/pay/util/OpayLoadingWindow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    sget-object v3, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/pay/util/OpayLoadingWindow;->U(Z)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v4, :cond_5

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/opay/team/newhome/bean/SavingsDetailsData;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/SavingsDetailsData;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v0, v1

    .line 53
    :goto_2
    iput-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->s:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lee6;

    .line 60
    .line 61
    iget-object v0, v0, Lee6;->e:Landroidx/constraintlayout/widget/Group;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->f0()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->X()Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/opay/team/newhome/bean/SavingsDetailsData;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/SavingsDetailsData;->a()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :cond_4
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    if-eqz p1, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_3

    .line 98
    :cond_6
    move-object p1, v1

    .line 99
    :goto_3
    if-eq p1, v3, :cond_8

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->X()Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lee6;

    .line 113
    .line 114
    iget-object p1, p1, Lee6;->e:Landroidx/constraintlayout/widget/Group;

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Lee6;

    .line 126
    .line 127
    iget-object p0, p0, Lee6;->f:Lgia;

    .line 128
    .line 129
    invoke-virtual {p0}, Lgia;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-eqz p0, :cond_8

    .line 134
    .line 135
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object p0
.end method

.method public static final c0()Lteam/opay/pay/util/OpayLoadingWindow;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/util/OpayLoadingWindow;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/util/OpayLoadingWindow;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d0(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->a0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final e0(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->r:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    const-string v1, "settingsStorage"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->r:Lteam/opay/core/settings/SettingsStorage;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v3, v2

    .line 20
    :cond_1
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    xor-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->f0(Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/opay/team/newhome/home/bean/BalanceHideChangeEvent;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/opay/team/newhome/home/bean/BalanceHideChangeEvent;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v3, 0x2

    .line 45
    const-string v4, "balance_hidden_change"

    .line 46
    .line 47
    invoke-static {v0, v4, v1, v3, v2}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->f0()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->X()Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final W()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->r:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "settingsStorage"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget v0, Lteam/opay/pay/R$string;->omain_pay_balance_place_holder:I

    .line 18
    .line 19
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v0, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->s:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget v1, Lteam/opay/pay/R$string;->omain_amount_unknown:I

    .line 33
    .line 34
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v1, Lnyc;->a:Lnyc;

    .line 48
    .line 49
    const/16 v2, 0x16

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lnyc;->h(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    move-object v0, v1

    .line 57
    :goto_1
    return-object v0
.end method

.method public final X()Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y()Lteam/opay/pay/util/OpayLoadingWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/util/OpayLoadingWindow;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lee6;

    .line 6
    .line 7
    iget-object v0, v0, Lee6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->W()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->r:Lteam/opay/core/settings/SettingsStorage;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, "settingsStorage"

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :cond_1
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget v0, Lteam/opay/pay/R$drawable;->omain_ic_balance_hide:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget v0, Lteam/opay/pay/R$mipmap;->omain_ic_balance_show:I

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lee6;

    .line 44
    .line 45
    iget-object v1, v1, Lee6;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->a0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lteam/opay/core/settings/SettingsStorage;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "requireContext(...)"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->r:Lteam/opay/core/settings/SettingsStorage;

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lee6;

    .line 30
    .line 31
    iget-object p1, p1, Lee6;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;->X()Lcom/opay/team/newhome/home/balance/HomeSavingDetailsAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lee6;

    .line 58
    .line 59
    iget-object p1, p1, Lee6;->f:Lgia;

    .line 60
    .line 61
    iget-object p1, p1, Lgia;->c:Lcom/google/android/material/button/MaterialButton;

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    new-instance p2, Ll17;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Ll17;-><init>(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lee6;

    .line 78
    .line 79
    iget-object p1, p1, Lee6;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    new-instance p2, Lm17;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lm17;-><init>(Lcom/opay/team/newhome/home/balance/HomeSavingDetailsFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method
