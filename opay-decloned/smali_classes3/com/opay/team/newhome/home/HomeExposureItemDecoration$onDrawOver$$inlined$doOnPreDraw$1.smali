.class public final Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$doOnPreDraw$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic e:I

.field public final synthetic f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView;ILcom/opay/team/newhome/home/HomeExposureItemDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->c:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput p5, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->e:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->b:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "null cannot be cast to non-null type com.opay.team.newhome.adapter.HomeExposureInterface"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Lyz6;

    .line 20
    .line 21
    iget v1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->e:I

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lyz6;->d(I)Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->c:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    iget-object v2, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->c(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-float/2addr v1, v2

    .line 39
    iget-object v2, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->b:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "getContext(...)"

    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljmf;->q(Landroid/content/Context;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v4, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->b:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v5}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->f(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v2, v3

    .line 70
    int-to-float v2, v2

    .line 71
    iget-object v3, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 72
    .line 73
    invoke-static {v3}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->d(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;)F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    sub-float/2addr v2, v3

    .line 78
    iget-object v3, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->e(Lcom/opay/team/newhome/home/HomeExposureItemDecoration;)F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    sub-float/2addr v2, v3

    .line 85
    cmpg-float v1, v1, v2

    .line 86
    .line 87
    if-gtz v1, :cond_1

    .line 88
    .line 89
    sget-object v1, Lxz6;->a:Lxz6;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->f:Lcom/opay/team/newhome/home/HomeExposureItemDecoration;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/opay/team/newhome/home/HomeExposureItemDecoration;->g()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iget v3, p0, Lcom/opay/team/newhome/home/HomeExposureItemDecoration$onDrawOver$$inlined$doOnPreDraw$1;->e:I

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lxz6;->e(IILteam/opay/odialog/net/AdDataItem;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    return-void
.end method
