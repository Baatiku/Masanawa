.class public final Lcom/opay/team/newhome/home/HomeExposureItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HomeExposureItemDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/opay/team/newhome/home/HomeExposureItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "",
        "type",
        "<init>",
        "(I)V",
        "Landroid/graphics/Canvas;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "onDrawOver",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/content/Context;",
        "ctx",
        "h",
        "(Landroid/content/Context;)I",
        "a",
        "I",
        "g",
        "()I",
        "",
        "b",
        "F",
        "navigationHeight",
        "bubbleHeight",
        "d",
        "redundancyHeight",
        "e",
        "mStatusBarHeight",
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
.field public final a:I

.field public final b:F

.field public final c:F

.field public final d:F

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->a:I

    .line 5
    .line 6
    const/high16 p1, 0x42600000    # 56.0f

    .line 7
    .line 8
    invoke-static {p1}, Ljmf;->c(F)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->b:F

    .line 13
    .line 14
    const/high16 p1, 0x41400000    # 12.0f

    .line 15
    .line 16
    invoke-static {p1}, Ljmf;->c(F)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->c:F

    .line 21
    .line 22
    const/high16 p1, 0x42c80000    # 100.0f

    .line 23
    .line 24
    invoke-static {p1}, Ljmf;->c(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->d:F

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic c(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->c:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->b:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->d:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->h(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->e:I

    .line 10
    .line 11
    :cond_0
    iget p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->e:I

    .line 12
    .line 13
    return p1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "parent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "state"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of p3, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    instance-of p3, p3, Lyz6;

    .line 36
    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    sget-object v0, Lxz6;->a:Lxz6;

    .line 45
    .line 46
    iget v1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->a:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lxz6;->j(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ge v0, p3, :cond_4

    .line 53
    .line 54
    if-gt v0, p3, :cond_4

    .line 55
    .line 56
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    new-instance v4, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v9, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;

    .line 68
    .line 69
    move-object v1, v9

    .line 70
    move-object v2, v8

    .line 71
    move-object v3, v8

    .line 72
    move-object v5, p2

    .line 73
    move v6, v0

    .line 74
    move-object v7, p0

    .line 75
    invoke-direct/range {v1 .. v7}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;ILcom/opay/team/newhome/home/HomeExposureItemDecoration;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v8, v9}, Lona;->a(Landroid/view/View;Ljava/lang/Runnable;)Lona;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "OneShotPreDrawListener.add(this) { action(this) }"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    if-eq v0, p3, :cond_4

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    return-void
.end method
