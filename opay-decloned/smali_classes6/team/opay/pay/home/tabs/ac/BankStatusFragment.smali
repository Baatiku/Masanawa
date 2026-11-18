.class public final Lteam/opay/pay/home/tabs/ac/BankStatusFragment;
.super Lteam/opay/pay/home/tabs/ac/Hilt_BankStatusFragment;
.source "BankStatusFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/home/tabs/ac/Hilt_BankStatusFragment<",
        "Lif6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/BankStatusFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lif6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "T",
        "Lteam/opay/pay/home/tabs/BankTransferViewModel;",
        "p",
        "Lid8;",
        "S",
        "()Lteam/opay/pay/home/tabs/BankTransferViewModel;",
        "viewModel",
        "Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;",
        "q",
        "R",
        "()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;",
        "mBankStatusAdapter",
        "",
        "r",
        "Ljava/lang/String;",
        "userType",
        "s",
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
.field public static final s:Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->s:Lteam/opay/pay/home/tabs/ac/BankStatusFragment$Companion;

    .line 8
    .line 9
    const-string v0, "user_type"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->t:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$1;->INSTANCE:Lteam/opay/pay/home/tabs/ac/BankStatusFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/tabs/ac/Hilt_BankStatusFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->p:Lid8;

    .line 49
    .line 50
    new-instance v0, Lkk0;

    .line 51
    .line 52
    invoke-direct {v0}, Lkk0;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->q:Lid8;

    .line 60
    .line 61
    const-string v0, ""

    .line 62
    .line 63
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->r:Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method public static synthetic O()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->V()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic P(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->U(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final S()Lteam/opay/pay/home/tabs/BankTransferViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lif6;

    .line 6
    .line 7
    iget-object v0, v0, Lif6;->d:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    :goto_0
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_1
    invoke-static {v0, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 29
    .line 30
    .line 31
    :cond_2
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move-object v0, v2

    .line 39
    :goto_2
    sget-object v3, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 40
    .line 41
    if-eq v0, v3, :cond_9

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lteam/opay/pay/api/BankSuccessReatKanBan;

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move-object v0, v2

    .line 53
    :goto_3
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lif6;

    .line 60
    .line 61
    iget-object v0, v0, Lif6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lteam/opay/pay/api/BankSuccessReatKanBan;

    .line 77
    .line 78
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->r:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, p1, p0}, Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;->s(Lteam/opay/pay/api/BankSuccessReatKanBan;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getEmptyView()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-nez p1, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/Hilt_BankStatusFragment;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-nez p0, :cond_7

    .line 103
    .line 104
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    sget v0, Lteam/opay/pay/R$layout;->layout_no_data:I

    .line 112
    .line 113
    invoke-virtual {p0, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getEmptyView()Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_9

    .line 130
    .line 131
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method

.method public static final V()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getEmptyView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;->r()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->S()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->I0()Landroidx/lifecycle/LiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "getViewLifecycleOwner(...)"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Llk0;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Llk0;-><init>(Lteam/opay/pay/home/tabs/ac/BankStatusFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->t:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    :cond_0
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->r:Ljava/lang/String;

    .line 24
    .line 25
    sget-object p2, Lx7b;->a:Lx7b;

    .line 26
    .line 27
    const-string v0, "user_type"

    .line 28
    .line 29
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aput-object p1, v0, v1

    .line 38
    .line 39
    const-string p1, "bank_network_show"

    .line 40
    .line 41
    invoke-virtual {p2, p1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lif6;

    .line 49
    .line 50
    iget-object p1, p1, Lif6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->R()Lteam/opay/pay/home/tabs/ac/BankStatusAdapter;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/BankStatusFragment;->T()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
