.class public final Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;
.super Lcom/opay/team/newhome/home/holder/HomeViewHolder;
.source "HomeHeadFunViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;",
        "Lcom/opay/team/newhome/home/holder/HomeViewHolder;",
        "Lhja;",
        "binding",
        "<init>",
        "(Lhja;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "data",
        "",
        "b",
        "(ILcom/opay/team/newhome/home/bean/HomeData;)V",
        "c",
        "Lhja;",
        "Lcom/opay/team/newhome/home/HomeExposureItemDecoration;",
        "d",
        "Lid8;",
        "g",
        "()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;",
        "decoration",
        "Lcom/opay/team/newhome/adapter/HomeHeadAdapter;",
        "e",
        "h",
        "()Lcom/opay/team/newhome/adapter/HomeHeadAdapter;",
        "homeHeadAdapter",
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
.field public final c:Lhja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhja;)V
    .locals 3
    .param p1    # Lhja;
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
    invoke-virtual {p1}, Lhja;->a()Landroidx/recyclerview/widget/RecyclerView;

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
    iput-object p1, p0, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->c:Lhja;

    .line 19
    .line 20
    new-instance v0, Lc07;

    .line 21
    .line 22
    invoke-direct {v0}, Lc07;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->d:Lid8;

    .line 30
    .line 31
    new-instance v0, Ld07;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ld07;-><init>(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->e:Lid8;

    .line 41
    .line 42
    iget-object p1, p1, Lhja;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->h()Lcom/opay/team/newhome/adapter/HomeHeadAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x3

    .line 62
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->g()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->g()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static synthetic c(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;)Lcom/opay/team/newhome/adapter/HomeHeadAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->i(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;)Lcom/opay/team/newhome/adapter/HomeHeadAdapter;

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
    invoke-static {}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->f()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->j(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private final g()Lcom/opay/team/newhome/home/HomeExposureItemDecoration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->d:Lid8;

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

.method public static final i(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;)Lcom/opay/team/newhome/adapter/HomeHeadAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;

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
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Le07;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Le07;-><init>(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;->u(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static final j(Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;Lcom/opay/team/newhome/bean/NewBusinessData;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/opay/team/newhome/home/holder/HomeViewHolder;->a(Lcom/opay/team/newhome/bean/NewBusinessData;)V

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
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

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
    const-string v3, "url"

    .line 18
    .line 19
    invoke-direct {v0, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/NewBusinessData;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    const-string p1, "name"

    .line 29
    .line 30
    invoke-static {p1, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Lkotlin/Pair;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object p1, v1, v0

    .line 42
    .line 43
    const-string p1, "home_head_item_click"

    .line 44
    .line 45
    invoke-virtual {p0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method


# virtual methods
.method public b(ILcom/opay/team/newhome/home/bean/HomeData;)V
    .locals 1
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
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/bean/HomeData;->g()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->h()Lcom/opay/team/newhome/adapter/HomeHeadAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/bean/HomeData;->g()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_2
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/base/BindingAdapter;->setData(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->h()Lcom/opay/team/newhome/adapter/HomeHeadAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/base/BindingAdapter;->setData(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    return-void
.end method

.method public final h()Lcom/opay/team/newhome/adapter/HomeHeadAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/holder/HomeHeadFunViewHolder;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/adapter/HomeHeadAdapter;

    .line 8
    .line 9
    return-object v0
.end method
