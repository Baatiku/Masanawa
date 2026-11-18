.class public final Lteam/opay/pay/loan/opay/LanesProxy;
.super Lteam/opay/easemoni/widget/lane/VarietyAdapter2$ItemBuilder;
.source "EMFinanceEntranceFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/easemoni/widget/lane/VarietyAdapter2$ItemBuilder<",
        "Lteam/opay/pay/loan/opay/LaneBeans;",
        "Lteam/opay/pay/loan/opay/LanesViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ?\u0010\u0014\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00082\u0016\u0010\u0013\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/loan/opay/LanesProxy;",
        "Lteam/opay/easemoni/widget/lane/VarietyAdapter2$ItemBuilder;",
        "Lteam/opay/pay/loan/opay/LaneBeans;",
        "Lteam/opay/pay/loan/opay/LanesViewHolder;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "data",
        "index",
        "Lkotlin/Function1;",
        "",
        "",
        "action",
        "onBindViewHolder",
        "(Lteam/opay/pay/loan/opay/LanesViewHolder;Lteam/opay/pay/loan/opay/LaneBeans;ILkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/pay/loan/opay/LaneAdapter;",
        "laneAdapter$delegate",
        "Lid8;",
        "getLaneAdapter",
        "()Lteam/opay/pay/loan/opay/LaneAdapter;",
        "laneAdapter",
        "loan_release"
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
.field private final laneAdapter$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/easemoni/widget/lane/VarietyAdapter2$ItemBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc98;

    .line 5
    .line 6
    invoke-direct {v0}, Lc98;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/loan/opay/LanesProxy;->laneAdapter$delegate:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()Lteam/opay/pay/loan/opay/LaneAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/loan/opay/LanesProxy;->laneAdapter_delegate$lambda$1()Lteam/opay/pay/loan/opay/LaneAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getLaneAdapter()Lteam/opay/pay/loan/opay/LaneAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/LanesProxy;->laneAdapter$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/loan/opay/LaneAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final laneAdapter_delegate$lambda$1()Lteam/opay/pay/loan/opay/LaneAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/loan/opay/LaneAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/loan/opay/LaneAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/pay/loan/opay/LaneProxy;

    .line 7
    .line 8
    invoke-direct {v1}, Lteam/opay/pay/loan/opay/LaneProxy;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/easemoni/widget/lane/VarietyAdapter2;->addItemBuilder(Lteam/opay/easemoni/widget/lane/VarietyAdapter2$ItemBuilder;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/loan/opay/LanesViewHolder;

    check-cast p2, Lteam/opay/pay/loan/opay/LaneBeans;

    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/loan/opay/LanesProxy;->onBindViewHolder(Lteam/opay/pay/loan/opay/LanesViewHolder;Lteam/opay/pay/loan/opay/LaneBeans;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onBindViewHolder(Lteam/opay/pay/loan/opay/LanesViewHolder;Lteam/opay/pay/loan/opay/LaneBeans;ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1    # Lteam/opay/pay/loan/opay/LanesViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/loan/opay/LaneBeans;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/loan/opay/LanesViewHolder;",
            "Lteam/opay/pay/loan/opay/LaneBeans;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p3, "holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lteam/opay/pay/loan/opay/LanesProxy;->getLaneAdapter()Lteam/opay/pay/loan/opay/LaneAdapter;

    move-result-object p3

    invoke-virtual {p2}, Lteam/opay/pay/loan/opay/LaneBeans;->getLaneList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Lteam/opay/easemoni/widget/lane/VarietyAdapter2;->setDataList(Ljava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/loan/opay/LanesViewHolder;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lteam/opay/pay/loan/opay/LanesViewHolder;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "getContext(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p4, 0x44fa0000    # 2000.0f

    invoke-static {p4, p3}, Lr7a;->c(FLandroid/content/Context;)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 5
    new-instance v5, Lteam/opay/pay/loan/opay/LanesProxy$onBindViewHolder$1$1;

    const/4 p3, 0x0

    invoke-direct {v5, p2, p1, p3}, Lteam/opay/pay/loan/opay/LanesProxy$onBindViewHolder$1$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lteam/opay/pay/loan/opay/LanesViewHolder;Ljr2;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lteam/opay/easemoni/widget/lane/CoroutineExtKt;->b(JJLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lv56;

    move-result-object p1

    .line 6
    invoke-static {}, Lkotlinx/coroutines/g;->b()Lzr2;

    move-result-object p2

    invoke-static {p1, p2}, Ly86;->N(Lv56;Lzr2;)Lkotlinx/coroutines/l;

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget v0, Lcom/loan/cash/credit/easemoni/R$layout;->easemoni_item_lane_content:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget p2, Lcom/loan/cash/credit/easemoni/R$id;->rv:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-direct {p0}, Lteam/opay/pay/loan/opay/LanesProxy;->getLaneAdapter()Lteam/opay/pay/loan/opay/LaneAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lteam/opay/easemoni/widget/lane/LaneLayoutManager;

    .line 37
    .line 38
    invoke-direct {v0}, Lteam/opay/easemoni/widget/lane/LaneLayoutManager;-><init>()V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x10

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lteam/opay/easemoni/widget/lane/LaneLayoutManager;->p(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lteam/opay/easemoni/widget/lane/LaneLayoutManager;->q(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lteam/opay/pay/loan/opay/EMFinanceEntranceFragmentKt;->makeUnTouchable(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lteam/opay/pay/loan/opay/LanesViewHolder;

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, p1}, Lteam/opay/pay/loan/opay/LanesViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    return-object p2
.end method
