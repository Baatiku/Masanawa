.class public final Lteam/opay/pay/payment/tv/TvProductListFragment;
.super Lteam/opay/pay/payment/tv/Hilt_TvProductListFragment;
.source "TvProductListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/payment/tv/Hilt_TvProductListFragment<",
        "Lcj6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J)\u0010\n\u001a\u00020\t2\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0004R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0015\u001a\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/pay/payment/tv/TvProductListFragment;",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lcj6;",
        "<init>",
        "()V",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/payment/tv/TvProduct;",
        "Lkotlin/collections/ArrayList;",
        "productList",
        "",
        "Y",
        "(Ljava/util/ArrayList;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initView",
        "Lteam/opay/pay/payment/tv/TVTopupViewModel;",
        "p",
        "Lid8;",
        "T",
        "()Lteam/opay/pay/payment/tv/TVTopupViewModel;",
        "viewModel",
        "",
        "q",
        "Z",
        "H",
        "()Z",
        "setDismissKeyboard",
        "(Z)V",
        "dismissKeyboard",
        "Lteam/opay/pay/payment/tv/TvProductAdapter;",
        "r",
        "S",
        "()Lteam/opay/pay/payment/tv/TvProductAdapter;",
        "productAdapter",
        "",
        "s",
        "J",
        "lastClickTime",
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

.field public q:Z

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/payment/tv/TvProductListFragment$1;->INSTANCE:Lteam/opay/pay/payment/tv/TvProductListFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/tv/Hilt_TvProductListFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/payment/tv/TvProductListFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/payment/tv/TvProductListFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/tv/TvProductListFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/payment/tv/TvProductListFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lteam/opay/pay/payment/tv/TvProductListFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v3, p0}, Lteam/opay/pay/payment/tv/TvProductListFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->p:Lid8;

    .line 33
    .line 34
    new-instance v0, Lgef;

    .line 35
    .line 36
    invoke-direct {v0}, Lgef;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->r:Lid8;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/tv/TvProductListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/tv/TvProductListFragment;->U(Lteam/opay/pay/payment/tv/TvProductListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P()Lteam/opay/pay/payment/tv/TvProductAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/tv/TvProductListFragment;->X()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/tv/TvProductListFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/tv/TvProductListFragment;->W(Lteam/opay/pay/payment/tv/TvProductListFragment;Ljava/lang/Float;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/payment/tv/TvProductListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/tv/TvProductListFragment;->V(Lteam/opay/pay/payment/tv/TvProductListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final T()Lteam/opay/pay/payment/tv/TVTopupViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/payment/tv/TvProductListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/16 p2, 0x23

    .line 10
    .line 11
    if-eq p1, p2, :cond_4

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iget-wide v0, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->s:J

    .line 18
    .line 19
    sub-long v0, p1, v0

    .line 20
    .line 21
    const-wide/16 v2, 0x320

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-gez v4, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-wide p1, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->s:J

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lteam/opay/pay/payment/tv/TvProduct;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    sget-object p2, Lx7b;->a:Lx7b;

    .line 43
    .line 44
    const-string p3, "servicetype"

    .line 45
    .line 46
    const-string v0, "TV"

    .line 47
    .line 48
    invoke-static {p3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->T()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->S()Lteam/opay/pay/payment/tv/TvProviderInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TvProviderInfo;->m()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    :goto_0
    const-string v1, "provider"

    .line 69
    .line 70
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "package"

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->o()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lteam/opay/pay/payment/tv/TvProduct;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    :cond_2
    const-string v2, ""

    .line 97
    .line 98
    :cond_3
    const-string v3, "amount"

    .line 99
    .line 100
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const/4 v3, 0x4

    .line 105
    new-array v3, v3, [Lkotlin/Pair;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    aput-object p3, v3, v4

    .line 109
    .line 110
    const/4 p3, 0x1

    .line 111
    aput-object v0, v3, p3

    .line 112
    .line 113
    const/4 p3, 0x2

    .line 114
    aput-object v1, v3, p3

    .line 115
    .line 116
    const/4 p3, 0x3

    .line 117
    aput-object v2, v3, p3

    .line 118
    .line 119
    const-string p3, "COMMON_tv_amount_click"

    .line 120
    .line 121
    invoke-virtual {p2, p3, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->T()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->q0(Lteam/opay/pay/payment/tv/TvProduct;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method

.method public static final V(Lteam/opay/pay/payment/tv/TvProductListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lteam/opay/pay/R$id;->ivNotice:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lteam/opay/pay/payment/tv/TvProduct;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    new-instance p1, Lteam/opay/pay/payment/tv/TvDescDetailPopWindow;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const-string v0, "getContext(...)"

    .line 28
    .line 29
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProduct;->l()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    const-string p0, ""

    .line 39
    .line 40
    :cond_0
    invoke-direct {p1, p3, p0}, Lteam/opay/pay/payment/tv/TvDescDetailPopWindow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/tv/TvDescDetailPopWindow;->d(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public static final W(Lteam/opay/pay/payment/tv/TvProductListFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/tv/TvProductAdapter;->p(Ljava/lang/Float;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final X()Lteam/opay/pay/payment/tv/TvProductAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/payment/tv/TvProductAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final S()Lteam/opay/pay/payment/tv/TvProductAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvProductListFragment;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Y(Ljava/util/ArrayList;)V
    .locals 6
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/payment/tv/TvProduct;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lteam/opay/pay/payment/tv/TvProduct;

    .line 28
    .line 29
    invoke-virtual {v3}, Lteam/opay/pay/payment/tv/TvProduct;->c()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Lteam/opay/pay/payment/tv/TvProduct;->f()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :cond_3
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcj6;

    .line 6
    .line 7
    iget-object v0, v0, Lcj6;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->w(J)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lhef;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lhef;-><init>(Lteam/opay/pay/payment/tv/TvProductListFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->S()Lteam/opay/pay/payment/tv/TvProductAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lief;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lief;-><init>(Lteam/opay/pay/payment/tv/TvProductListFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->T()Lteam/opay/pay/payment/tv/TVTopupViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lteam/opay/pay/payment/tv/TVTopupViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Ljef;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Ljef;-><init>(Lteam/opay/pay/payment/tv/TvProductListFragment;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lteam/opay/pay/payment/tv/TvProductListFragment$a;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lteam/opay/pay/payment/tv/TvProductListFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 84
    .line 85
    .line 86
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/payment/tv/TvProductListFragment;->initView()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
