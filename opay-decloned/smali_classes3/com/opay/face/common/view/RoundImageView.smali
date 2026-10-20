.class public Lcom/opay/face/common/view/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundImageView.java"


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:Landroid/graphics/Path;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/BitmapShader;

.field public f:Landroid/graphics/Matrix;

.field public g:Landroid/graphics/Bitmap;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/opay/face/common/view/RoundImageView;->m:I

    .line 8
    iput-boolean p1, p0, Lcom/opay/face/common/view/RoundImageView;->n:Z

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/RoundImageView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    .line 12
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 15
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/opay/face/common/view/RoundImageView;->m:I

    .line 17
    iput-boolean p1, p0, Lcom/opay/face/common/view/RoundImageView;->n:Z

    .line 18
    invoke-virtual {p0, p2}, Lcom/opay/face/common/view/RoundImageView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/opay/face/common/view/RoundImageView;->m:I

    .line 26
    iput-boolean p1, p0, Lcom/opay/face/common/view/RoundImageView;->n:Z

    .line 27
    invoke-virtual {p0, p2}, Lcom/opay/face/common/view/RoundImageView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Landroid/graphics/Canvas;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final d(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 13
    .line 14
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/opay/face/R$styleable;->RoundImageView:[I

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget v0, Lcom/opay/face/R$styleable;->RoundImageView_riv_radius:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sget v2, Lcom/opay/face/R$styleable;->RoundImageView_riv_topLeft_radius:I

    .line 44
    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, p0, Lcom/opay/face/common/view/RoundImageView;->h:F

    .line 50
    .line 51
    sget v2, Lcom/opay/face/R$styleable;->RoundImageView_riv_topRight_radius:I

    .line 52
    .line 53
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, p0, Lcom/opay/face/common/view/RoundImageView;->i:F

    .line 58
    .line 59
    sget v2, Lcom/opay/face/R$styleable;->RoundImageView_riv_bottomLeft_radius:I

    .line 60
    .line 61
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Lcom/opay/face/common/view/RoundImageView;->j:F

    .line 66
    .line 67
    sget v2, Lcom/opay/face/R$styleable;->RoundImageView_riv_bottomRight_radius:I

    .line 68
    .line 69
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/opay/face/common/view/RoundImageView;->k:F

    .line 74
    .line 75
    sget v0, Lcom/opay/face/R$styleable;->RoundImageView_riv_border_width:I

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/opay/face/common/view/RoundImageView;->l:F

    .line 82
    .line 83
    sget v0, Lcom/opay/face/R$styleable;->RoundImageView_riv_border_color:I

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/opay/face/common/view/RoundImageView;->m:I

    .line 91
    .line 92
    sget v0, Lcom/opay/face/R$styleable;->RoundImageView_riv_circle:I

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput-boolean v0, p0, Lcom/opay/face/common/view/RoundImageView;->n:Z

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .line 102
    .line 103
    :cond_0
    iget-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 104
    .line 105
    iget v0, p0, Lcom/opay/face/common/view/RoundImageView;->l:F

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 111
    .line 112
    iget v0, p0, Lcom/opay/face/common/view/RoundImageView;->m:I

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    mul-int v2, v2, v0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    mul-int v3, v3, v1

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/high16 v5, 0x3f000000    # 0.5f

    .line 38
    .line 39
    if-le v2, v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    int-to-float v1, v1

    .line 47
    div-float/2addr v2, v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    int-to-float v0, v0

    .line 54
    mul-float v0, v0, v2

    .line 55
    .line 56
    sub-float/2addr v1, v0

    .line 57
    mul-float v1, v1, v5

    .line 58
    .line 59
    move v4, v1

    .line 60
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    int-to-float v0, v0

    .line 68
    div-float/2addr v2, v0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    int-to-float v0, v0

    .line 74
    int-to-float v1, v1

    .line 75
    mul-float v1, v1, v2

    .line 76
    .line 77
    sub-float/2addr v0, v1

    .line 78
    mul-float v0, v0, v5

    .line 79
    .line 80
    :goto_0
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    .line 81
    .line 82
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    .line 86
    .line 87
    add-float/2addr v4, v5

    .line 88
    float-to-int v2, v4

    .line 89
    int-to-float v2, v2

    .line 90
    add-float/2addr v0, v5

    .line 91
    float-to-int v0, v0

    .line 92
    int-to-float v0, v0

    .line 93
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->e:Landroid/graphics/BitmapShader;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->f:Landroid/graphics/Matrix;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/opay/face/common/view/RoundImageView;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->e:Landroid/graphics/BitmapShader;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/opay/face/common/view/RoundImageView;->e()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/opay/face/common/view/RoundImageView;->n:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    int-to-float v0, v0

    .line 79
    const/high16 v1, 0x40000000    # 2.0f

    .line 80
    .line 81
    div-float/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    int-to-float v2, v2

    .line 87
    div-float/2addr v2, v1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    int-to-float v4, v4

    .line 93
    div-float/2addr v4, v1

    .line 94
    iget-object v5, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {p1, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    iget v2, p0, Lcom/opay/face/common/view/RoundImageView;->l:F

    .line 100
    .line 101
    cmpl-float v2, v2, v3

    .line 102
    .line 103
    if-lez v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    int-to-float v2, v2

    .line 110
    div-float/2addr v2, v1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    int-to-float v3, v3

    .line 116
    div-float/2addr v3, v1

    .line 117
    iget v4, p0, Lcom/opay/face/common/view/RoundImageView;->l:F

    .line 118
    .line 119
    div-float/2addr v4, v1

    .line 120
    sub-float/2addr v0, v4

    .line 121
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 122
    .line 123
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iget v0, p0, Lcom/opay/face/common/view/RoundImageView;->h:F

    .line 128
    .line 129
    iget v1, p0, Lcom/opay/face/common/view/RoundImageView;->i:F

    .line 130
    .line 131
    iget v2, p0, Lcom/opay/face/common/view/RoundImageView;->k:F

    .line 132
    .line 133
    iget v4, p0, Lcom/opay/face/common/view/RoundImageView;->j:F

    .line 134
    .line 135
    const/16 v5, 0x8

    .line 136
    .line 137
    new-array v5, v5, [F

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    aput v0, v5, v6

    .line 141
    .line 142
    const/4 v6, 0x1

    .line 143
    aput v0, v5, v6

    .line 144
    .line 145
    const/4 v0, 0x2

    .line 146
    aput v1, v5, v0

    .line 147
    .line 148
    const/4 v0, 0x3

    .line 149
    aput v1, v5, v0

    .line 150
    .line 151
    const/4 v0, 0x4

    .line 152
    aput v2, v5, v0

    .line 153
    .line 154
    const/4 v0, 0x5

    .line 155
    aput v2, v5, v0

    .line 156
    .line 157
    const/4 v0, 0x6

    .line 158
    aput v4, v5, v0

    .line 159
    .line 160
    const/4 v0, 0x7

    .line 161
    aput v4, v5, v0

    .line 162
    .line 163
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 164
    .line 165
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->a:Landroid/graphics/RectF;

    .line 166
    .line 167
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 168
    .line 169
    invoke-virtual {v0, v1, v5, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 177
    .line 178
    .line 179
    iget v0, p0, Lcom/opay/face/common/view/RoundImageView;->l:F

    .line 180
    .line 181
    cmpl-float v0, v0, v3

    .line 182
    .line 183
    if-lez v0, :cond_3

    .line 184
    .line 185
    iget-object v0, p0, Lcom/opay/face/common/view/RoundImageView;->b:Landroid/graphics/Path;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/opay/face/common/view/RoundImageView;->d:Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/opay/face/common/view/RoundImageView;->g:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
