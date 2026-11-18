.class public final Lteam/opay/pay/wallet/view/CirclePercentView;
.super Landroid/view/View;
.source "CirclePercentView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001aR\u0016\u0010!\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001aR\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\'\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010$R\u0016\u0010)\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001aR\u0014\u0010+\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010$R\u0014\u0010-\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010$R\u0016\u0010/\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010\u001a\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/pay/wallet/view/CirclePercentView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "",
        "onMeasure",
        "(II)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "circleRingPaint",
        "b",
        "I",
        "defaultColor",
        "c",
        "firstColor",
        "d",
        "secondColor",
        "e",
        "drawColor",
        "",
        "f",
        "F",
        "cx",
        "g",
        "cy",
        "h",
        "outRingDiameter",
        "i",
        "firstWidth",
        "j",
        "secondWidth",
        "k",
        "threshold",
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
.field public final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:I

.field public final i:F

.field public final j:F

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lteam/opay/pay/R$color;->osdk_color_b9e5cd:I

    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lteam/opay/pay/R$color;->color_00B876:I

    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->c:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lteam/opay/pay/R$color;->osdk_color_ffc20a:I

    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->d:I

    .line 6
    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->e:I

    const/16 v0, 0x14

    .line 7
    invoke-static {v0}, Ljmf;->d(I)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->h:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 8
    invoke-static {v0}, Ljmf;->c(F)F

    move-result v0

    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->i:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 9
    invoke-static {v1}, Ljmf;->c(F)F

    move-result v1

    iput v1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->j:F

    const/16 v1, 0x168

    .line 10
    iput v1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->k:I

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lteam/opay/pay/R$color;->osdk_color_b9e5cd:I

    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->b:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->c:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lteam/opay/pay/R$color;->osdk_color_ffc20a:I

    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->d:I

    .line 19
    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->e:I

    const/16 p2, 0x14

    .line 20
    invoke-static {p2}, Ljmf;->d(I)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->h:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 21
    invoke-static {p2}, Ljmf;->c(F)F

    move-result p2

    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->i:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 22
    invoke-static {v0}, Ljmf;->c(F)F

    move-result v0

    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->j:F

    const/16 v0, 0x168

    .line 23
    iput v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->k:I

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lteam/opay/pay/R$color;->osdk_color_b9e5cd:I

    invoke-static {p2, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->b:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lteam/opay/pay/R$color;->color_00B876:I

    invoke-static {p3, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->c:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lteam/opay/pay/R$color;->osdk_color_ffc20a:I

    invoke-static {p3, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->d:I

    .line 32
    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->e:I

    const/16 p2, 0x14

    .line 33
    invoke-static {p2}, Ljmf;->d(I)I

    move-result p2

    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->h:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 34
    invoke-static {p2}, Ljmf;->c(F)F

    move-result p2

    iput p2, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->i:F

    const/high16 p3, 0x41000000    # 8.0f

    .line 35
    invoke-static {p3}, Ljmf;->c(F)F

    move-result p3

    iput p3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->j:F

    const/16 p3, 0x168

    .line 36
    iput p3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->k:I

    const/4 p3, 0x1

    .line 37
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
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
    iget v0, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->f:F

    .line 10
    .line 11
    iget v1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->h:I

    .line 12
    .line 13
    int-to-float v2, v1

    .line 14
    sub-float v2, v0, v2

    .line 15
    .line 16
    int-to-float v3, v1

    .line 17
    add-float/2addr v0, v3

    .line 18
    iget v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->g:F

    .line 19
    .line 20
    int-to-float v4, v1

    .line 21
    sub-float v12, v3, v4

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    add-float/2addr v1, v3

    .line 25
    iget-object v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 26
    .line 27
    iget v4, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->e:I

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    iget v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->k:I

    .line 33
    .line 34
    int-to-float v9, v3

    .line 35
    const/4 v10, 0x0

    .line 36
    iget-object v11, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 37
    .line 38
    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 39
    .line 40
    move-object v3, p1

    .line 41
    move v4, v2

    .line 42
    move v5, v12

    .line 43
    move v6, v0

    .line 44
    move v7, v1

    .line 45
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    iget v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->k:I

    .line 49
    .line 50
    const/16 v4, 0x168

    .line 51
    .line 52
    if-ge v3, v4, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget v5, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->d:I

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 62
    .line 63
    iget v5, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->j:F

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    .line 67
    .line 68
    iget v3, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->k:I

    .line 69
    .line 70
    int-to-float v5, v3

    .line 71
    const/high16 v6, 0x42b40000    # 90.0f

    .line 72
    .line 73
    sub-float v8, v5, v6

    .line 74
    .line 75
    sub-int/2addr v4, v3

    .line 76
    int-to-float v9, v4

    .line 77
    const/4 v10, 0x0

    .line 78
    iget-object v11, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->a:Landroid/graphics/Paint;

    .line 79
    .line 80
    move-object v3, p1

    .line 81
    move v4, v2

    .line 82
    move v5, v12

    .line 83
    move v6, v0

    .line 84
    move v7, v1

    .line 85
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

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
    iput p1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->f:F

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
    iput p1, p0, Lteam/opay/pay/wallet/view/CirclePercentView;->g:F

    .line 21
    .line 22
    return-void
.end method
