.class public final Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;
.super Lteam/opay/pay/customerservice/Hilt_OCustomerServiceFaqListFragment;
.source "OCustomerServiceFaqListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/customerservice/Hilt_OCustomerServiceFaqListFragment<",
        "Lzb8;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004R\u001b\u0010\u0012\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lzb8;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Lteam/opay/pay/customerservice/OCustomerServiceViewModel;",
        "o",
        "Lid8;",
        "U",
        "()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;",
        "viewModel",
        "",
        "p",
        "Ljava/lang/String;",
        "id",
        "q",
        "parentId",
        "",
        "r",
        "I",
        "pageNo",
        "Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;",
        "s",
        "Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;",
        "adapter",
        "",
        "t",
        "Z",
        "isCreateFinished",
        "u",
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
.field public static final u:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:I

.field public final s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->u:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$1;->INSTANCE:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/customerservice/Hilt_OCustomerServiceFaqListFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->o:Lid8;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->r:I

    .line 36
    .line 37
    new-instance v0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 38
    .line 39
    invoke-direct {v0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->W(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->X(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->V(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Lteam/opay/pay/customerservice/OCustomerServiceViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 11
    .line 12
    const-string v3, "update_customer_viewpager_height_in_sub_tab"

    .line 13
    .line 14
    invoke-static {p0, v3, v2, v1, v0}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 19
    .line 20
    const-string v3, "update_customer_viewpager_height"

    .line 21
    .line 22
    invoke-static {p0, v3, v2, v1, v0}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public static final W(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->p:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_a

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getParentId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    :goto_1
    iget-object v2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_a

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getHasNextPage()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_2
    const/4 v3, 0x1

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    iput v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->r:I

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getMPageNo()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/4 v2, 0x1

    .line 67
    :goto_3
    iput v2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->r:I

    .line 68
    .line 69
    :goto_4
    if-eqz p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getQuestions()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    move-object v2, v0

    .line 77
    :goto_5
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    :cond_6
    const/4 v1, 0x1

    .line 86
    :cond_7
    if-nez v1, :cond_9

    .line 87
    .line 88
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 89
    .line 90
    if-eqz p1, :cond_8

    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getQuestions()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_8
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lzb8;

    .line 104
    .line 105
    iget-object p1, p1, Lzb8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    new-instance v0, Ls1a;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Ls1a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget p0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->r:I

    .line 120
    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p1, p0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->V(Ljava/lang/Integer;)V

    .line 126
    .line 127
    .line 128
    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 11
    .line 12
    const-string v3, "update_customer_viewpager_height_in_sub_tab"

    .line 13
    .line 14
    invoke-static {p0, v3, v2, v1, v0}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 19
    .line 20
    const-string v3, "update_customer_viewpager_height"

    .line 21
    .line 22
    invoke-static {p0, v3, v2, v1, v0}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->t:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->D()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lx7b;->a:Lx7b;

    .line 25
    .line 26
    const-string v1, "Module_ID"

    .line 27
    .line 28
    iget-object v2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    new-array v2, v2, [Lkotlin/Pair;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object v1, v2, v3

    .line 39
    .line 40
    const-string v1, "service_center_hotline_guess_your_issue_click_module"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->U(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->p:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->W(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->r:I

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->V(Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v4, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;Ljr2;)V

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x3

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lzb8;

    .line 102
    .line 103
    iget-object v0, v0, Lzb8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    new-instance v1, Lr1a;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lr1a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    const-string p2, "key_data"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "key_first"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;->n(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->p:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getParentId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->q:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lzb8;

    .line 63
    .line 64
    iget-object p2, p2, Lzb8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lzb8;

    .line 83
    .line 84
    iget-object p2, p2, Lzb8;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->s:Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceSubTabData;->getQuestions()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x1

    .line 101
    iput p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->r:I

    .line 102
    .line 103
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->U()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lq1a;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lq1a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$a;

    .line 121
    .line 122
    invoke-direct {v2, v1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 126
    .line 127
    .line 128
    iput-boolean p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->t:Z

    .line 129
    .line 130
    return-void
.end method
