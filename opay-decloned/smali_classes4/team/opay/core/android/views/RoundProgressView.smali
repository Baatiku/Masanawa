.class public final Lteam/opay/core/android/views/RoundProgressView;
.super Landroid/view/View;
.source "RoundProgressView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ7\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001fR\u0016\u0010\"\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001fR\u0016\u0010$\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001fR\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'R\u0016\u0010\u0019\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010.\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010\u001f\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/core/android/views/RoundProgressView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "",
        "onLayout",
        "(ZIIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "progress",
        "setProgress",
        "(I)V",
        "a",
        "()V",
        "",
        "F",
        "centerX",
        "b",
        "centerY",
        "c",
        "radius",
        "Landroid/graphics/Paint;",
        "d",
        "Landroid/graphics/Paint;",
        "paint",
        "e",
        "progressPaint",
        "f",
        "I",
        "g",
        "maxProgress",
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
.field public a:F

.field public b:F

.field public c:F

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:I

.field public g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 2
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->g:F

    .line 3
    invoke-virtual {p0}, Lteam/opay/core/android/views/RoundProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 5
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->g:F

    .line 6
    invoke-virtual {p0}, Lteam/opay/core/android/views/RoundProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 8
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->g:F

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/android/views/RoundProgressView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->d:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/high16 v1, 0x41200000    # 10.0f

    .line 9
    .line 10
    invoke-static {v1}, Lkmf;->f(F)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->d:Landroid/graphics/Paint;

    .line 18
    .line 19
    const-string v2, "paint"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v3

    .line 28
    :cond_0
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->d:Landroid/graphics/Paint;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v0, v3

    .line 41
    :cond_1
    const/4 v5, 0x1

    .line 42
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->d:Landroid/graphics/Paint;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v3

    .line 53
    :cond_2
    sget-object v2, Lhh2;->a:Lhh2;

    .line 54
    .line 55
    sget v6, Lteam/opay/pay/R$color;->osdk_6AC49B:I

    .line 56
    .line 57
    invoke-virtual {v2, v6}, Lhh2;->a(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->e:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->e:Landroid/graphics/Paint;

    .line 75
    .line 76
    const-string v5, "progressPaint"

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move-object v0, v3

    .line 84
    :cond_3
    sget v6, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 85
    .line 86
    invoke-virtual {v2, v6}, Lhh2;->a(I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->e:Landroid/graphics/Paint;

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    move-object v0, v3

    .line 101
    :cond_4
    invoke-static {v1}, Lkmf;->f(F)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->e:Landroid/graphics/Paint;

    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v0, v3

    .line 116
    :cond_5
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->e:Landroid/graphics/Paint;

    .line 120
    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    move-object v3, v0

    .line 128
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 129
    .line 130
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lteam/opay/core/android/views/RoundProgressView;->a:F

    .line 10
    .line 11
    iget v1, p0, Lteam/opay/core/android/views/RoundProgressView;->b:F

    .line 12
    .line 13
    iget v2, p0, Lteam/opay/core/android/views/RoundProgressView;->c:F

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/core/android/views/RoundProgressView;->d:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v3, "paint"

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v3, v4

    .line 26
    :cond_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v0, p0, Lteam/opay/core/android/views/RoundProgressView;->a:F

    .line 32
    .line 33
    iget v1, p0, Lteam/opay/core/android/views/RoundProgressView;->c:F

    .line 34
    .line 35
    sub-float v2, v0, v1

    .line 36
    .line 37
    iget v3, p0, Lteam/opay/core/android/views/RoundProgressView;->b:F

    .line 38
    .line 39
    sub-float v5, v3, v1

    .line 40
    .line 41
    add-float/2addr v0, v1

    .line 42
    add-float/2addr v3, v1

    .line 43
    invoke-direct {v6, v2, v5, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lteam/opay/core/android/views/RoundProgressView;->f:I

    .line 47
    .line 48
    mul-int/lit16 v0, v0, 0x168

    .line 49
    .line 50
    int-to-float v0, v0

    .line 51
    iget v1, p0, Lteam/opay/core/android/views/RoundProgressView;->g:F

    .line 52
    .line 53
    div-float v8, v0, v1

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/core/android/views/RoundProgressView;->e:Landroid/graphics/Paint;

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const-string v0, "progressPaint"

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v10, v4

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v10, v0

    .line 67
    :goto_0
    const/high16 v7, 0x43870000    # 270.0f

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    move-object v5, p1

    .line 71
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    const/high16 p2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr p1, p2

    .line 12
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->a:F

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-float p1, p1

    .line 19
    div-float/2addr p1, p2

    .line 20
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->b:F

    .line 21
    .line 22
    iget p2, p0, Lteam/opay/core/android/views/RoundProgressView;->a:F

    .line 23
    .line 24
    cmpl-float p3, p2, p1

    .line 25
    .line 26
    if-lez p3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p1, p2

    .line 30
    :goto_0
    const/high16 p2, 0x40a00000    # 5.0f

    .line 31
    .line 32
    invoke-static {p2}, Lkmf;->f(F)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-float/2addr p1, p2

    .line 37
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->c:F

    .line 38
    .line 39
    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/core/android/views/RoundProgressView;->f:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
