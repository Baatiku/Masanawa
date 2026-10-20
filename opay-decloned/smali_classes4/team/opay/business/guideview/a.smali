.class public Lteam/opay/business/guideview/a;
.super Ljava/lang/Object;
.source "Common.java"


# direct methods
.method public static a(Landroid/view/LayoutInflater;Lteam/opay/business/guideview/b;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lteam/opay/business/guideview/b;->b(Landroid/view/LayoutInflater;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lteam/opay/business/guideview/MaskView$LayoutParams;

    .line 6
    .line 7
    const/4 v1, -0x2

    .line 8
    invoke-direct {v0, v1, v1}, Lteam/opay/business/guideview/MaskView$LayoutParams;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lteam/opay/business/guideview/b;->d()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lteam/opay/business/guideview/MaskView$LayoutParams;->c:I

    .line 16
    .line 17
    invoke-interface {p1}, Lteam/opay/business/guideview/b;->e()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lteam/opay/business/guideview/MaskView$LayoutParams;->d:I

    .line 22
    .line 23
    invoke-interface {p1}, Lteam/opay/business/guideview/b;->a()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lteam/opay/business/guideview/MaskView$LayoutParams;->a:I

    .line 28
    .line 29
    invoke-interface {p1}, Lteam/opay/business/guideview/b;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, v0, Lteam/opay/business/guideview/MaskView$LayoutParams;->b:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public static b(Landroid/view/View;II)Landroid/graphics/Rect;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget v2, v0, v2

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget v4, v0, v3

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    add-int/2addr v5, v2

    .line 23
    aget v0, v0, v3

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr v0, p0

    .line 30
    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    .line 32
    .line 33
    neg-int p0, p1

    .line 34
    neg-int p1, p2

    .line 35
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method
