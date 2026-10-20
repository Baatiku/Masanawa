.class public final Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LinePagerIndicatorDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ7\u0010\u0005\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0015\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0015\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\"\u0010%\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0015\u001a\u0004\u0008#\u0010\u001a\"\u0004\u0008$\u0010\u001cR\u0016\u0010\'\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u0015R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "<init>",
        "()V",
        "Landroid/graphics/Canvas;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "onDrawOver",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "",
        "indicatorStartX",
        "indicatorPosY",
        "",
        "itemCount",
        "activePosition",
        "(Landroid/graphics/Canvas;FFII)V",
        "a",
        "I",
        "colorActive",
        "b",
        "colorInactive",
        "getMActiveItemLength",
        "()I",
        "setMActiveItemLength",
        "(I)V",
        "mActiveItemLength",
        "d",
        "getMInactiveItemLength",
        "setMInactiveItemLength",
        "mInactiveItemLength",
        "e",
        "getMIndicatorItemPadding",
        "setMIndicatorItemPadding",
        "mIndicatorItemPadding",
        "f",
        "mActivePosition",
        "Landroid/graphics/Paint;",
        "g",
        "Landroid/graphics/Paint;",
        "mPaint",
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

.field public final b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lhh2;->a:Lhh2;

    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$color;->mint:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lhh2;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->a:I

    .line 13
    .line 14
    sget v1, Lteam/opay/pay/R$color;->osdk_color_e8e8e8:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lhh2;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->b:I

    .line 21
    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    invoke-static {v0}, Lkmf;->g(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->c:I

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    invoke-static {v0}, Lkmf;->g(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->d:I

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    invoke-static {v0}, Lkmf;->g(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->e:I

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->g:Landroid/graphics/Paint;

    .line 50
    .line 51
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->d:I

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Canvas;FFII)V
    .locals 9

    .line 1
    iget v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->d:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    add-float/2addr v0, p3

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    :goto_0
    if-ge v7, p4, :cond_3

    .line 10
    .line 11
    if-ne v7, p5, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->c:I

    .line 14
    .line 15
    div-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget v1, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->d:I

    .line 19
    .line 20
    :goto_1
    iget v2, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->e:I

    .line 21
    .line 22
    add-int v8, v1, v2

    .line 23
    .line 24
    iget-object v2, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->g:Landroid/graphics/Paint;

    .line 25
    .line 26
    if-ne v7, p5, :cond_1

    .line 27
    .line 28
    iget v3, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->a:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget v3, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->b:I

    .line 32
    .line 33
    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    if-ne v7, p5, :cond_2

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    add-float v4, p2, v1

    .line 40
    .line 41
    iget-object v6, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->g:Landroid/graphics/Paint;

    .line 42
    .line 43
    move-object v1, p1

    .line 44
    move v2, p2

    .line 45
    move v3, v0

    .line 46
    move v5, v0

    .line 47
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    div-int/lit8 v2, v1, 0x2

    .line 52
    .line 53
    int-to-float v2, v2

    .line 54
    add-float v3, p2, v2

    .line 55
    .line 56
    add-float/2addr v2, p3

    .line 57
    int-to-float v1, v1

    .line 58
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    .line 60
    div-float/2addr v1, v4

    .line 61
    iget-object v4, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->g:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    :goto_3
    int-to-float v1, v8

    .line 67
    add-float/2addr p2, v1

    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6
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
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/lit8 p3, v4, -0x1

    .line 30
    .line 31
    iget v0, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->d:I

    .line 32
    .line 33
    mul-int v0, v0, p3

    .line 34
    .line 35
    iget v1, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->c:I

    .line 36
    .line 37
    add-int/2addr v0, v1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v1, p3}, Lkotlin/ranges/c;->c(II)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    iget v1, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->e:I

    .line 44
    .line 45
    mul-int p3, p3, v1

    .line 46
    .line 47
    add-int/2addr v0, p3

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    sub-int/2addr p3, v0

    .line 53
    int-to-float p3, p3

    .line 54
    const/high16 v0, 0x40000000    # 2.0f

    .line 55
    .line 56
    div-float v2, p3, v0

    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 63
    .line 64
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    const/4 v0, -0x1

    .line 72
    if-eq p3, v0, :cond_0

    .line 73
    .line 74
    iput p3, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->f:I

    .line 75
    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iget p3, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->d:I

    .line 81
    .line 82
    sub-int/2addr p2, p3

    .line 83
    int-to-float v3, p2

    .line 84
    iget v5, p0, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->f:I

    .line 85
    .line 86
    move-object v0, p0

    .line 87
    move-object v1, p1

    .line 88
    invoke-virtual/range {v0 .. v5}, Lteam/opay/pay/transfer/LinePagerIndicatorDecoration;->c(Landroid/graphics/Canvas;FFII)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method
