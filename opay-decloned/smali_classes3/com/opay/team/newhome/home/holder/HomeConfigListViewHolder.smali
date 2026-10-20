.class public abstract Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;
.super Lcom/opay/team/newhome/home/holder/HomeViewHolder;
.source "HomeConfigListViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R$\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\"\u0010#R$\u0010+\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "Lfja;",
        "binding",
        "<init>",
        "(Lfja;)V",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "pool",
        "",
        "j",
        "(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "data",
        "b",
        "(ILcom/opay/team/newhome/home/bean/HomeData;)V",
        "c",
        "Lfja;",
        "d",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "getHomeData",
        "()Lcom/opay/team/newhome/home/bean/HomeData;",
        "setHomeData",
        "(Lcom/opay/team/newhome/home/bean/HomeData;)V",
        "homeData",
        "Lcom/opay/team/newhome/home/HomeExposureItemDecoration;",
        "e",
        "Lid8;",
        "h",
        "()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;",
        "decoration",
        "Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;",
        "f",
        "i",
        "()Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;",
        "uiType2Adapter",
        "Lcom/opay/team/newhome/bean/CommonPayData;",
        "g",
        "Lcom/opay/team/newhome/bean/CommonPayData;",
        "()Lcom/opay/team/newhome/bean/CommonPayData;",
        "setCommonPayData",
        "(Lcom/opay/team/newhome/bean/CommonPayData;)V",
        "commonPayData",
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
.field public final c:Lfja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/opay/team/newhome/home/bean/HomeData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/opay/team/newhome/bean/CommonPayData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfja;)V
    .locals 12
    .param p1    # Lfja;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfja;->a()Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->c:Lfja;

    .line 19
    .line 20
    new-instance v0, Lbz6;

    .line 21
    .line 22
    invoke-direct {v0}, Lbz6;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->e:Lid8;

    .line 30
    .line 31
    new-instance v0, Lcz6;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcz6;-><init>(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->f:Lid8;

    .line 41
    .line 42
    iget-object p1, p1, Lfja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->i()Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x4

    .line 58
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    new-instance v1, Lcom/opay/team/newhome/view/OMainSpaceItemDecoration;

    .line 79
    .line 80
    invoke-static {v0}, Lkmf;->g(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v0, 0x6

    .line 85
    invoke-static {v0}, Lkmf;->g(I)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/16 v0, 0xc

    .line 90
    .line 91
    invoke-static {v0}, Lkmf;->g(I)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    const/16 v10, 0x28

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v5, 0x4

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v8, 0x0

    .line 102
    move-object v2, v1

    .line 103
    invoke-direct/range {v2 .. v11}, Lcom/opay/team/newhome/view/OMainSpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->h()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;ILcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->l(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;ILcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->f()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;)Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->k(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;)Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static final k(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;)Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getContext(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ldz6;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Ldz6;-><init>(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;->v(Lkotlin/jvm/functions/Function2;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static final l(Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;ILcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-super {p0, p2}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;->a(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    new-instance v0, Lkotlin/Pair;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getId()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    const-string v3, "id"

    .line 18
    .line 19
    invoke-direct {v0, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lkotlin/Pair;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v3, v1

    .line 32
    :goto_1
    const-string v4, "name"

    .line 33
    .line 34
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lkotlin/Pair;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_2
    const-string p2, "url"

    .line 46
    .line 47
    invoke-direct {v3, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "position"

    .line 55
    .line 56
    invoke-static {p2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p2, 0x4

    .line 61
    new-array p2, p2, [Lkotlin/Pair;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    aput-object v0, p2, v1

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aput-object v2, p2, v0

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    aput-object v3, p2, v0

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    aput-object p1, p2, v0

    .line 74
    .line 75
    const-string p1, "home_business_item_click"

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0
.end method


# virtual methods
.method public b(ILcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 4
    .param p2    # Lcom/opay/team/newhome/home/bean/HomeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->d:Lcom/opay/team/newhome/home/bean/HomeData;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/bean/HomeData;->g()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/bean/HomeData;->g()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_1
    if-lez v0, :cond_3

    .line 36
    .line 37
    rem-int/lit8 v1, v0, 0x4

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    div-int/lit8 v0, v0, 0x4

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/2addr v0, v2

    .line 46
    :goto_2
    const/16 v1, 0x4a

    .line 47
    .line 48
    invoke-static {v1}, Lkmf;->g(I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    mul-int v1, v1, v0

    .line 53
    .line 54
    const/16 v3, 0x12

    .line 55
    .line 56
    invoke-static {v3}, Lkmf;->g(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    add-int/2addr v1, v3

    .line 61
    sub-int/2addr v0, v2

    .line 62
    invoke-static {v0, p2}, Lkotlin/ranges/c;->c(II)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {v2}, Lkmf;->g(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    mul-int p2, p2, v0

    .line 71
    .line 72
    add-int/2addr v1, p2

    .line 73
    iget-object p2, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->c:Lfja;

    .line 74
    .line 75
    iget-object p2, p2, Lfja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    .line 83
    if-eq v0, v1, :cond_4

    .line 84
    .line 85
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    .line 87
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->c:Lfja;

    .line 88
    .line 89
    iget-object v0, v0, Lfja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget-object p2, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->c:Lfja;

    .line 96
    .line 97
    iget-object p2, p2, Lfja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const/4 v0, -0x2

    .line 104
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    .line 106
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->i()Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/base/BindingAdapter;->setData(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final g()Lcom/opay/team/newhome/bean/CommonPayData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->g:Lcom/opay/team/newhome/bean/CommonPayData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i()Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/adapter/HomeServiceTypeOneAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeConfigListViewHolder;->c:Lfja;

    .line 7
    .line 8
    iget-object v0, v0, Lfja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
