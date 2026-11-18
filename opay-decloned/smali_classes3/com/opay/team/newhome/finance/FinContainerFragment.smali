.class public final Lcom/opay/team/newhome/finance/FinContainerFragment;
.super Lcom/opay/team/newhome/finance/Hilt_FinContainerFragment;
.source "FinContainerFragment.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J!\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0004R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/opay/team/newhome/finance/FinContainerFragment;",
        "Lteam/opay/pay/home/OMainFragment;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "<init>",
        "()V",
        "",
        "addObserver",
        "showPopupHomeDialog",
        "Lteam/opay/odialog/net/AdDataItem;",
        "data",
        "showPopupFragment",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "floatAdData",
        "showFloatView",
        "showThanksLetter",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Lxyf;",
        "onCreateViewBinding",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onLayoutFinish",
        "(Landroid/view/View;)V",
        "onResume",
        "onDestroyView",
        "onCancel",
        "onSuccess",
        "onDestroy",
        "Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
        "viewModel$delegate",
        "Lid8;",
        "getViewModel",
        "()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
        "viewModel",
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
.field private final viewModel$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/Hilt_FinContainerFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/opay/team/newhome/finance/FinContainerFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/opay/team/newhome/finance/FinContainerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/opay/team/newhome/finance/FinContainerFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/opay/team/newhome/finance/FinContainerFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/opay/team/newhome/finance/FinContainerFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/opay/team/newhome/finance/FinContainerFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/opay/team/newhome/finance/FinContainerFragment;->viewModel$delegate:Lid8;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic B(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/finance/FinContainerFragment;->addObserver$lambda$0(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/finance/FinContainerFragment;->addObserver$lambda$1(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lcom/opay/team/newhome/finance/FinContainerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showPopupFragment$lambda$5$lambda$4$lambda$3(Lcom/opay/team/newhome/finance/FinContainerFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showThanksLetter$lambda$12$lambda$11(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showFloatView$lambda$7(Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showPopupFragment$lambda$5$lambda$4(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Le06;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Le06;-><init>(Lcom/opay/team/newhome/finance/FinContainerFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/opay/team/newhome/finance/FinContainerFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lcom/opay/team/newhome/finance/FinContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lf06;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lf06;-><init>(Lcom/opay/team/newhome/finance/FinContainerFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/opay/team/newhome/finance/FinContainerFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lcom/opay/team/newhome/finance/FinContainerFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static final addObserver$lambda$0(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showPopupFragment(Lteam/opay/odialog/net/AdDataItem;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final addObserver$lambda$1(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showFloatView(Lteam/opay/odialog/net/AdDataItem;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/finance/FinContainerFragment;->viewModel$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final showFloatView(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;->g:Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry$Companion;->a()Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, La06;

    .line 8
    .line 9
    invoke-direct {v1, p1}, La06;-><init>(Lteam/opay/odialog/net/AdDataItem;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, p1, v1}, Lcom/opay/team/newhome/redpackage/view/RedpackageFloatViewEntry;->j(Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lx7b;->a:Lx7b;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Lkotlin/Pair;

    .line 19
    .line 20
    const-string v3, "tab_fin_popup_top100_show"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getCallbackShow()Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :cond_0
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lx7b;->l()Lteam/opay/pay/util/SingleLiveEvent;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lkotlin/Pair;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method private static final showFloatView$lambda$7(Lteam/opay/odialog/net/AdDataItem;)Lkotlin/Unit;
    .locals 9

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v0, Ld00;->a:Ld00;

    .line 19
    .line 20
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v0, 0x0

    .line 33
    new-array v6, v0, [Lkotlin/Pair;

    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const-string v5, "Finance"

    .line 39
    .line 40
    invoke-static/range {v1 .. v8}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 41
    .line 42
    .line 43
    sget-object v1, Lx7b;->a:Lx7b;

    .line 44
    .line 45
    const-string v2, "tab_fin_popup_top100_click"

    .line 46
    .line 47
    new-array v0, v0, [Lkotlin/Pair;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getCallbackClick()Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lx7b;->k()Lteam/opay/pay/util/SingleLiveEvent;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lkotlin/Pair;

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/odialog/net/AdDataItem;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v2, ""

    .line 79
    .line 80
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method private final showPopupFragment(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getImageIconUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ln27;->a(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    sget-object v0, Llm;->a:Llm;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getDiverseImgUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lteam/opay/odialog/net/AdDataItem;->getImageUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lc06;

    .line 47
    .line 48
    invoke-direct {v3, p0, p1}, Lc06;-><init>(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Llm;->h(Ljava/lang/String;Ljava/lang/String;Lhm6;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method private static final showPopupFragment$lambda$5$lambda$4(Lcom/opay/team/newhome/finance/FinContainerFragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;II)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string p3, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 p3, 0x1

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ne p2, p3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    sget-object p2, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/odialog/DialogQueueUtils;->c()V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;->a:Lcom/opay/team/home/dialog/HomeConfirgDialogManager$Companion;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$Companion;->a()Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v5, Lb06;

    .line 60
    .line 61
    invoke-direct {v5, p0}, Lb06;-><init>(Lcom/opay/team/newhome/finance/FinContainerFragment;)V

    .line 62
    .line 63
    .line 64
    const/16 v6, 0x8

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const-string v3, "source_popup"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v1, p0

    .line 71
    move-object v2, p1

    .line 72
    invoke-static/range {v0 .. v7}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager;->m(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method private static final showPopupFragment$lambda$5$lambda$4$lambda$3(Lcom/opay/team/newhome/finance/FinContainerFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final showPopupHomeDialog()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/odialog/DialogQueueUtils;->c()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showPopupFragment(Lteam/opay/odialog/net/AdDataItem;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private final showThanksLetter()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/home/MainViewModel;->F:Lteam/opay/pay/home/MainViewModel$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/MainViewModel$Companion;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v3, v1

    .line 25
    check-cast v3, Lteam/opay/odialog/net/ADListItem;

    .line 26
    .line 27
    invoke-virtual {v3}, Lteam/opay/odialog/net/ADListItem;->getAdpCode()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lteam/opay/pay/wallet/view/AnnouncementView;->l:Lteam/opay/pay/wallet/view/AnnouncementView$Companion;

    .line 32
    .line 33
    invoke-virtual {v4}, Lteam/opay/pay/wallet/view/AnnouncementView$Companion;->a()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/16 v5, 0x10

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v1, v2

    .line 55
    :goto_0
    check-cast v1, Lteam/opay/odialog/net/ADListItem;

    .line 56
    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    invoke-virtual {v1}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 76
    :goto_2
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    move-object v1, v2

    .line 80
    :goto_3
    if-eqz v1, :cond_7

    .line 81
    .line 82
    invoke-virtual {v1}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v4, "finance_thanking_letter"

    .line 101
    .line 102
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v4, Ljava/util/HashSet;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v5, Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v6, "user_ids"

    .line 117
    .line 118
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-nez v5, :cond_5

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    :goto_4
    new-instance v5, Lteam/opay/core/settings/SettingsStorage;

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    const-string v8, "requireContext(...)"

    .line 135
    .line 136
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v5, v7}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Lteam/opay/core/settings/SettingsStorage;->H()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-lez v7, :cond_7

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_7

    .line 157
    .line 158
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getAd_text()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    sget-object v7, Lcom/opay/team/newhome/finance/UserNewInterestDialogFragment;->g:Lcom/opay/team/newhome/finance/UserNewInterestDialogFragment$Companion;

    .line 163
    .line 164
    new-instance v14, Lteam/opay/pay/api/UserNewInterest;

    .line 165
    .line 166
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getTitle()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v8, :cond_6

    .line 171
    .line 172
    const/4 v12, 0x4

    .line 173
    const/4 v13, 0x0

    .line 174
    const-string v9, "\\n"

    .line 175
    .line 176
    const-string v10, "\n "

    .line 177
    .line 178
    const/4 v11, 0x0

    .line 179
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    goto :goto_5

    .line 184
    :cond_6
    move-object v8, v2

    .line 185
    :goto_5
    invoke-direct {v14, v0, v8, v2}, Lteam/opay/pay/api/UserNewInterest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v14}, Lcom/opay/team/newhome/finance/UserNewInterestDialogFragment$Companion;->a(Lteam/opay/pay/api/UserNewInterest;)Lcom/opay/team/newhome/finance/UserNewInterestDialogFragment;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v2, Ld06;

    .line 193
    .line 194
    invoke-direct {v2}, Ld06;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lcom/opay/team/newhome/finance/UserNewInterestDialogFragment;->F(Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    sget-object v2, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 201
    .line 202
    invoke-virtual {v2, v0, p0}, Lteam/opay/odialog/DialogQueueUtils;->f(Lteam/opay/odialog/BaseDialogFragment;Landroidx/fragment/app/Fragment;)V

    .line 203
    .line 204
    .line 205
    sget-object v0, Lx7b;->a:Lx7b;

    .line 206
    .line 207
    const-string v2, "tab_fin_popup_thanks_show"

    .line 208
    .line 209
    new-array v3, v3, [Lkotlin/Pair;

    .line 210
    .line 211
    invoke-virtual {v0, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    .line 227
    .line 228
    :cond_7
    return-void
.end method

.method private static final showThanksLetter$lambda$12$lambda$11(Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Lkotlin/Pair;

    .line 10
    .line 11
    const-string v1, "tab_fin_popup_thanks_click"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->getViewModel()Lcom/opay/team/newhome/viewmodel/FinanceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCreateViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxyf;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0}, Lsya;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lsya;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "inflate(...)"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/team/newhome/finance/FinanceUtil;->a:Lcom/opay/team/newhome/finance/FinanceUtil$Companion;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/finance/FinanceUtil$Companion;->d(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/opay/team/newhome/finance/FinNewFragment;->Companion:Lcom/opay/team/newhome/finance/FinNewFragment$Companion;

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/finance/FinNewFragment$Companion;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/home/OMainFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lzl8;->a:Lzl8;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lzl8;->d(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutFinish(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    sget-object p1, Lzl8;->a:Lzl8;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lzl8;->a(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->addObserver()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showPopupHomeDialog()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/opay/team/newhome/finance/FinContainerFragment;->showThanksLetter()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/home/OMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lteam/opay/pay/R$id;->finContainer:I

    .line 10
    .line 11
    new-instance p2, Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 12
    .line 13
    invoke-direct {p2}, Lcom/opay/team/newhome/finance/FinNewFragment;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, p2}, Lteam/opay/pay/base/FragmentKt;->t(Landroidx/fragment/app/Fragment;ILandroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
