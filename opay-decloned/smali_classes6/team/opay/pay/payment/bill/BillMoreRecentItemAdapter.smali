.class public final Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BillMoreRecentItemAdapter.kt"


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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/payment/bill/MoreServiceItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lag8;",
        "lifecycleOwner",
        "",
        "typeName",
        "<init>",
        "(Lag8;Ljava/lang/String;)V",
        "item",
        "",
        "o",
        "(Lteam/opay/pay/payment/bill/MoreServiceItemData;)V",
        "helper",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V",
        "a",
        "Lag8;",
        "getLifecycleOwner",
        "()Lag8;",
        "b",
        "Ljava/lang/String;",
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
.field public final a:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lag8;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "typeName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$layout;->item_bill_more_new_layout:I

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->a:Lag8;

    .line 17
    .line 18
    iput-object p2, p0, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->b:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->n(Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->o(Lteam/opay/pay/payment/bill/MoreServiceItemData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final n(Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "type"

    .line 6
    .line 7
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

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
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getAction()Ljava/lang/String;

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
    const-string v1, "more_page_recent_click"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->a:Lag8;

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
    new-instance v4, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter$convert$1$1;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter$convert$1$1;-><init>(Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;Ljr2;)V

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
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p2, "getContext(...)"

    .line 77
    .line 78
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getAction()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_0

    .line 86
    .line 87
    const-string p1, ""

    .line 88
    .line 89
    :cond_0
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0
.end method

.method private final o(Lteam/opay/pay/payment/bill/MoreServiceItemData;)V
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
    new-instance v3, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter$a;

    .line 31
    .line 32
    invoke-direct {v3}, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter$a;-><init>()V

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


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/payment/bill/MoreServiceItemData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/bill/MoreServiceItemData;)V

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
    sget v0, Lteam/opay/pay/R$id;->tv_name:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lc03;->a:Lc03;

    .line 21
    .line 22
    invoke-virtual {v0}, Lc03;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget v0, Lteam/opay/pay/R$id;->iv_icon:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 35
    .line 36
    sget v1, Lteam/opay/pay/R$color;->osdk_home_first_tint:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/home/ImageLottieView;->setTintColor(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->iv_icon:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v1, v0

    .line 48
    check-cast v1, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getDiverseImgUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const-string v0, ""

    .line 57
    .line 58
    :cond_1
    move-object v2, v0

    .line 59
    sget v3, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 60
    .line 61
    const/16 v8, 0x3c

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 87
    :goto_1
    xor-int/lit8 v1, v0, 0x1

    .line 88
    .line 89
    sget v2, Lteam/opay/pay/R$id;->iv_hot:I

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "getView(...)"

    .line 96
    .line 97
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 101
    .line 102
    .line 103
    if-nez v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreServiceItemData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x2

    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-static {v0, v1, v3, v2, v3}, Lcom/opay/team/newhome/home/ImageLottieView;->v(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    .line 122
    const-string v1, "itemView"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lr61;

    .line 128
    .line 129
    invoke-direct {v1, p0, p2, p1}, Lr61;-><init>(Lteam/opay/pay/payment/bill/BillMoreRecentItemAdapter;Lteam/opay/pay/payment/bill/MoreServiceItemData;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
