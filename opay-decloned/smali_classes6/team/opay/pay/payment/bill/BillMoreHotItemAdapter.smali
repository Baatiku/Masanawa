.class public final Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BillMoreHotItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001f\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "list",
        "Lag8;",
        "lifecycleOwner",
        "<init>",
        "(Ljava/util/List;Lag8;)V",
        "helper",
        "item",
        "",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V",
        "o",
        "(Lteam/opay/pay/payment/bill/MoreServiceItemData;)V",
        "a",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "b",
        "Lag8;",
        "getLifecycleOwner",
        "()Lag8;",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lag8;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
            ">;",
            "Lag8;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$layout;->item_bill_more_hot_layout:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->b:Lag8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/bill/MoreServiceItemData;Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->n(Lteam/opay/pay/payment/bill/MoreServiceItemData;Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->o(Lteam/opay/pay/payment/bill/MoreServiceItemData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final n(Lteam/opay/pay/payment/bill/MoreServiceItemData;Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "service"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "name"

    .line 16
    .line 17
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "url"

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x3

    .line 32
    new-array v4, v4, [Lkotlin/Pair;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    aput-object v1, v4, v5

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput-object v2, v4, v1

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    aput-object v3, v4, v1

    .line 42
    .line 43
    const-string v1, "more_page_hot_click"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->b:Lag8;

    .line 49
    .line 50
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v4, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter$convert$2$1;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {v4, p1, p0, v0}, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter$convert$2$1;-><init>(Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;Ljr2;)V

    .line 62
    .line 63
    .line 64
    const/4 v5, 0x2

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 68
    .line 69
    .line 70
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "getContext(...)"

    .line 77
    .line 78
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getAction()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez p0, :cond_0

    .line 86
    .line 87
    const-string p0, ""

    .line 88
    .line 89
    :cond_0
    invoke-static {p1, p0}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/bill/MoreServiceItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget v1, Lteam/opay/pay/R$id;->view_hot:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, 0x1

    .line 26
    sub-int/2addr v0, v3

    .line 27
    if-eq v2, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 32
    .line 33
    .line 34
    :cond_1
    sget v0, Lteam/opay/pay/R$id;->tv_name:I

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 41
    .line 42
    .line 43
    sget v0, Lteam/opay/pay/R$id;->tv_desc:I

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getRich_description()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 57
    .line 58
    sget v1, Lteam/opay/pay/R$id;->iv_icon:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v1, v0

    .line 65
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 66
    .line 67
    sget-object v0, Lc03;->a:Lc03;

    .line 68
    .line 69
    invoke-virtual {v0}, Lc03;->c()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    sget v0, Lteam/opay/pay/R$color;->osdk_home_first_tint:I

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/opay/team/newhome/home/ImageLottieView;->setTintColor(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getDiverseImgUrl()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    const-string v0, ""

    .line 89
    .line 90
    :cond_3
    move-object v2, v0

    .line 91
    sget v3, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 92
    .line 93
    const/16 v8, 0x3c

    .line 94
    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 104
    .line 105
    sget v1, Lteam/opay/pay/R$id;->col_hot:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "findViewById(...)"

    .line 112
    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lm61;

    .line 117
    .line 118
    invoke-direct {v1, p2, p0, p1}, Lm61;-><init>(Lteam/opay/pay/payment/bill/MoreServiceItemData;Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final o(Lteam/opay/pay/payment/bill/MoreServiceItemData;)V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->u0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/google/gson/Gson;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter$a;

    .line 31
    .line 32
    invoke-direct {v3}, Lteam/opay/pay/payment/bill/BillMoreHotItemAdapter$a;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "fromJson(...)"

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v0, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v3, v2

    .line 82
    check-cast v3, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 83
    .line 84
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 99
    .line 100
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 101
    .line 102
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {p1, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lcom/google/gson/Gson;

    .line 114
    .line 115
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lteam/opay/core/settings/NoClearStorage;->c2(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
