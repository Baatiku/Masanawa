.class public Lcom/opay/face/common/view/NewMaskView;
.super Landroid/view/View;
.source "NewMaskView.java"


# static fields
.field public static final F:Ljava/lang/String; = "NewMaskView"

.field public static G:I

.field public static H:I

.field public static I:F

.field public static J:F


# instance fields
.field public A:[F

.field public B:F

.field public C:Landroid/animation/ValueAnimator;

.field public D:Z

.field public E:F

.field public a:I

.field public b:Landroid/graphics/Xfermode;

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Z

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:Landroid/graphics/RectF;

.field public r:Landroid/graphics/RectF;

.field public s:Landroid/graphics/Matrix;

.field public t:Landroid/animation/ObjectAnimator;

.field public u:F

.field public v:Z

.field public w:Landroid/graphics/Path;

.field public x:Landroid/graphics/Path;

.field public y:Landroid/graphics/PathMeasure;

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#FFF7F7F7"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/opay/face/common/view/NewMaskView;->G:I

    .line 8
    .line 9
    const-string v0, "#FFDFDFDF"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/opay/face/common/view/NewMaskView;->H:I

    .line 16
    .line 17
    const/high16 v0, 0x41200000    # 10.0f

    .line 18
    .line 19
    sput v0, Lcom/opay/face/common/view/NewMaskView;->I:F

    .line 20
    .line 21
    const v0, 0x3f1e353f    # 0.618f

    .line 22
    .line 23
    .line 24
    sput v0, Lcom/opay/face/common/view/NewMaskView;->J:F

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->a:I

    .line 3
    sget p1, Lcom/opay/face/common/view/NewMaskView;->G:I

    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->l:Z

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->m:F

    const/high16 v0, 0x42f00000    # 120.0f

    .line 6
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->n:F

    .line 7
    sget v0, Lcom/opay/face/common/view/NewMaskView;->J:F

    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->p:F

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->q:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->r:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->s:Landroid/graphics/Matrix;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 12
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->x:Landroid/graphics/Path;

    .line 15
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->A:[F

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 18
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->E:F

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/opay/face/common/view/NewMaskView;->g(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->a:I

    .line 22
    sget p1, Lcom/opay/face/common/view/NewMaskView;->G:I

    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->l:Z

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->m:F

    const/high16 v0, 0x42f00000    # 120.0f

    .line 25
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->n:F

    .line 26
    sget v0, Lcom/opay/face/common/view/NewMaskView;->J:F

    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->p:F

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->q:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->r:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->s:Landroid/graphics/Matrix;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 31
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->x:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->A:[F

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 37
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->E:F

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/opay/face/common/view/NewMaskView;->g(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->a:I

    .line 41
    sget p1, Lcom/opay/face/common/view/NewMaskView;->G:I

    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->l:Z

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->m:F

    const/high16 p1, 0x42f00000    # 120.0f

    .line 44
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->n:F

    .line 45
    sget p1, Lcom/opay/face/common/view/NewMaskView;->J:F

    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->p:F

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->q:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->r:Landroid/graphics/RectF;

    .line 49
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->s:Landroid/graphics/Matrix;

    const/high16 p1, 0x40c00000    # 6.0f

    .line 50
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->x:Landroid/graphics/Path;

    .line 53
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    const/4 p1, 0x2

    .line 54
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->A:[F

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 56
    iget p1, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->E:F

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/opay/face/common/view/NewMaskView;->g(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/opay/face/common/view/NewMaskView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/NewMaskView;->i(Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/opay/face/common/view/NewMaskView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic c(Lcom/opay/face/common/view/NewMaskView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/opay/face/common/view/NewMaskView;->E:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final d()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-float v3, v1

    .line 12
    iget v4, v0, Lcom/opay/face/common/view/NewMaskView;->o:F

    .line 13
    .line 14
    mul-float v3, v3, v4

    .line 15
    .line 16
    const/high16 v4, 0x40000000    # 2.0f

    .line 17
    .line 18
    div-float/2addr v3, v4

    .line 19
    iput v3, v0, Lcom/opay/face/common/view/NewMaskView;->e:F

    .line 20
    .line 21
    float-to-int v3, v3

    .line 22
    add-int/lit8 v3, v3, -0x2

    .line 23
    .line 24
    int-to-float v3, v3

    .line 25
    sget-object v4, Lcom/opay/face/common/view/NewMaskView;->F:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v6, "mRadiusRatio:"

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v6, v0, Lcom/opay/face/common/view/NewMaskView;->o:F

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v4, v5}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const v4, 0x3f8ccccd    # 1.1f

    .line 50
    .line 51
    .line 52
    mul-float v4, v4, v3

    .line 53
    .line 54
    div-int/lit8 v1, v1, 0x2

    .line 55
    .line 56
    int-to-float v1, v1

    .line 57
    div-int/lit8 v2, v2, 0x2

    .line 58
    .line 59
    int-to-float v2, v2

    .line 60
    const v5, 0x3e75c28f    # 0.24f

    .line 61
    .line 62
    .line 63
    mul-float v5, v5, v3

    .line 64
    .line 65
    sub-float/2addr v2, v5

    .line 66
    iget-object v5, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 69
    .line 70
    .line 71
    const v5, 0x3f0d6289

    .line 72
    .line 73
    .line 74
    mul-float v13, v3, v5

    .line 75
    .line 76
    mul-float v6, v4, v5

    .line 77
    .line 78
    const/high16 v7, 0x40a00000    # 5.0f

    .line 79
    .line 80
    mul-float v7, v7, v3

    .line 81
    .line 82
    const/high16 v8, 0x40400000    # 3.0f

    .line 83
    .line 84
    div-float v14, v7, v8

    .line 85
    .line 86
    mul-float v5, v5, v14

    .line 87
    .line 88
    iget-object v7, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 89
    .line 90
    sub-float v4, v2, v4

    .line 91
    .line 92
    invoke-virtual {v7, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    .line 94
    .line 95
    iget-object v7, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 96
    .line 97
    add-float v15, v1, v13

    .line 98
    .line 99
    add-float v16, v1, v3

    .line 100
    .line 101
    sub-float v17, v2, v6

    .line 102
    .line 103
    move-object v6, v7

    .line 104
    move v7, v15

    .line 105
    move v8, v4

    .line 106
    move/from16 v9, v16

    .line 107
    .line 108
    move/from16 v10, v17

    .line 109
    .line 110
    move/from16 v11, v16

    .line 111
    .line 112
    move v12, v2

    .line 113
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 114
    .line 115
    .line 116
    iget-object v6, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 117
    .line 118
    add-float v12, v2, v5

    .line 119
    .line 120
    add-float/2addr v14, v2

    .line 121
    move-object v5, v6

    .line 122
    move/from16 v6, v16

    .line 123
    .line 124
    move v7, v12

    .line 125
    move v8, v15

    .line 126
    move v9, v14

    .line 127
    move v10, v1

    .line 128
    move v11, v14

    .line 129
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 133
    .line 134
    sub-float v13, v1, v13

    .line 135
    .line 136
    sub-float v3, v1, v3

    .line 137
    .line 138
    move v7, v13

    .line 139
    move v8, v14

    .line 140
    move v9, v3

    .line 141
    move v10, v12

    .line 142
    move v11, v3

    .line 143
    move v12, v2

    .line 144
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 145
    .line 146
    .line 147
    iget-object v5, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 148
    .line 149
    move v6, v3

    .line 150
    move/from16 v7, v17

    .line 151
    .line 152
    move v8, v13

    .line 153
    move v9, v4

    .line 154
    move v10, v1

    .line 155
    move v11, v4

    .line 156
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    .line 165
    .line 166
    iget-object v2, v0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    iput v1, v0, Lcom/opay/face/common/view/NewMaskView;->z:F

    .line 179
    .line 180
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/opay/face/common/view/NewMaskView;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    int-to-float v5, p2

    .line 9
    int-to-float v6, p3

    .line 10
    iget-object v7, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v2, p1

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 18
    .line 19
    const-string v1, "#80000000"

    .line 20
    .line 21
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/graphics/RectF;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/high16 v2, 0x41a00000    # 20.0f

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr p2, v2

    .line 50
    int-to-float p2, p2

    .line 51
    int-to-float p3, p3

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const/high16 p3, 0x41400000    # 12.0f

    .line 61
    .line 62
    invoke-static {p2, p3}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    int-to-float p2, p2

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, p3}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    int-to-float p3, p3

    .line 76
    iget-object v1, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object p2, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 82
    .line 83
    iget p3, p0, Lcom/opay/face/common/view/NewMaskView;->a:I

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 89
    .line 90
    iget-object p3, p0, Lcom/opay/face/common/view/NewMaskView;->b:Landroid/graphics/Xfermode;

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 96
    .line 97
    iget-object p3, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final g(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 13
    .line 14
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 43
    .line 44
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->i:Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-static {}, Lcom/opay/face/common/util/ColorUtils;->a()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->i:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget v3, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->i:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->i:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->j:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->j:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->j:Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->j:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget v2, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 116
    .line 117
    invoke-static {v0, v2}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    int-to-float v0, v0

    .line 122
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->k:Landroid/graphics/Paint;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->k:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->k:Landroid/graphics/Paint;

    .line 141
    .line 142
    const/high16 v0, -0x10000

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->k:Landroid/graphics/Paint;

    .line 148
    .line 149
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget v1, p0, Lcom/opay/face/common/view/NewMaskView;->u:F

    .line 159
    .line 160
    const/high16 v2, 0x40000000    # 2.0f

    .line 161
    .line 162
    div-float/2addr v1, v2

    .line 163
    invoke-static {p1, v1}, Lcom/opay/face/common/util/DensityUtils;->a(Landroid/content/Context;F)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    int-to-float p1, p1

    .line 168
    sput p1, Lcom/opay/face/common/view/NewMaskView;->I:F

    .line 169
    .line 170
    new-instance p1, Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 181
    .line 182
    const/4 p2, -0x1

    .line 183
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    .line 185
    .line 186
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 187
    .line 188
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 189
    .line 190
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 191
    .line 192
    .line 193
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->b:Landroid/graphics/Xfermode;

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/opay/face/common/view/NewMaskView;->h()V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public getBoxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getBoxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getRadiusRatio()F
    .locals 1

    .line 1
    const v0, 0x3f638e39

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    .line 10
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    new-instance v1, Lrq9;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lrq9;-><init>(Lcom/opay/face/common/view/NewMaskView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final synthetic i(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/NewMaskView;->l(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public j(F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->E:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->E:F

    .line 9
    .line 10
    iget v0, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    .line 11
    .line 12
    const-string v1, "radiusRatio"

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    new-array v2, v2, [F

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput v0, v2, v3

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    aput p1, v2, v0

    .line 22
    .line 23
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-wide/16 v0, 0xfa

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 33
    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/opay/face/common/view/NewMaskView$a;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/opay/face/common/view/NewMaskView$a;-><init>(Lcom/opay/face/common/view/NewMaskView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public k(FI)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->i:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget p2, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 25
    .line 26
    sub-float p2, p1, p2

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    cmpl-float v0, p2, v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/opay/face/common/view/NewMaskView;->l(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 47
    .line 48
    mul-float p2, p2, v0

    .line 49
    .line 50
    float-to-long v0, p2

    .line 51
    const-wide/16 v2, 0x190

    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iget-object p2, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    iget v2, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    new-array v3, v3, [F

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    aput v2, v3, v4

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    aput p1, v3, v2

    .line 69
    .line 70
    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->C:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final l(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->x:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    .line 23
    .line 24
    mul-float v0, v0, p1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->x:Landroid/graphics/Path;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/high16 v2, 0x42c80000    # 100.0f

    .line 13
    .line 14
    const/high16 v3, 0x431e0000    # 158.0f

    .line 15
    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    add-int/lit16 v4, v1, -0xf0

    .line 19
    .line 20
    div-int/lit8 v4, v4, 0x2

    .line 21
    .line 22
    int-to-float v4, v4

    .line 23
    mul-float v3, v3, v4

    .line 24
    .line 25
    div-float/2addr v3, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/lit8 v4, v0, -0x64

    .line 28
    .line 29
    div-int/lit8 v4, v4, 0x2

    .line 30
    .line 31
    int-to-float v4, v4

    .line 32
    mul-float v2, v2, v4

    .line 33
    .line 34
    div-float/2addr v2, v3

    .line 35
    move v3, v4

    .line 36
    move v4, v2

    .line 37
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    .line 39
    mul-float v3, v3, v2

    .line 40
    .line 41
    float-to-int v3, v3

    .line 42
    iput v3, p0, Lcom/opay/face/common/view/NewMaskView;->c:I

    .line 43
    .line 44
    mul-float v4, v4, v2

    .line 45
    .line 46
    float-to-int v3, v4

    .line 47
    iput v3, p0, Lcom/opay/face/common/view/NewMaskView;->d:I

    .line 48
    .line 49
    int-to-float v3, v0

    .line 50
    iget v4, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    .line 51
    .line 52
    mul-float v3, v3, v4

    .line 53
    .line 54
    div-float/2addr v3, v2

    .line 55
    iput v3, p0, Lcom/opay/face/common/view/NewMaskView;->e:F

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    int-to-float v6, v2

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v7, v2

    .line 67
    const/4 v8, 0x0

    .line 68
    const/16 v9, 0x1f

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v3, p1

    .line 73
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget-object v3, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1, v0, v1}, Lcom/opay/face/common/view/NewMaskView;->e(Landroid/graphics/Canvas;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v0, v1}, Lcom/opay/face/common/view/NewMaskView;->f(Landroid/graphics/Canvas;II)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->w:Landroid/graphics/Path;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->l:Z

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    :goto_1
    const/16 v2, 0x40

    .line 111
    .line 112
    if-ge v1, v2, :cond_4

    .line 113
    .line 114
    int-to-float v2, v1

    .line 115
    const/high16 v3, 0x43700000    # 240.0f

    .line 116
    .line 117
    div-float v3, v2, v3

    .line 118
    .line 119
    iget v5, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 120
    .line 121
    sub-float/2addr v5, v3

    .line 122
    const/4 v3, 0x0

    .line 123
    cmpg-float v3, v5, v3

    .line 124
    .line 125
    if-gez v3, :cond_1

    .line 126
    .line 127
    float-to-double v5, v5

    .line 128
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 129
    .line 130
    add-double/2addr v5, v7

    .line 131
    double-to-float v5, v5

    .line 132
    :cond_1
    iget v3, p0, Lcom/opay/face/common/view/NewMaskView;->z:F

    .line 133
    .line 134
    mul-float v5, v5, v3

    .line 135
    .line 136
    iget-object v3, p0, Lcom/opay/face/common/view/NewMaskView;->y:Landroid/graphics/PathMeasure;

    .line 137
    .line 138
    iget-object v6, p0, Lcom/opay/face/common/view/NewMaskView;->A:[F

    .line 139
    .line 140
    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    const/high16 v3, 0x42800000    # 64.0f

    .line 148
    .line 149
    div-float/2addr v2, v3

    .line 150
    const/high16 v3, 0x3f800000    # 1.0f

    .line 151
    .line 152
    sub-float/2addr v3, v2

    .line 153
    sget v2, Lcom/opay/face/common/view/NewMaskView;->H:I

    .line 154
    .line 155
    const/high16 v5, 0x437f0000    # 255.0f

    .line 156
    .line 157
    mul-float v3, v3, v5

    .line 158
    .line 159
    float-to-int v3, v3

    .line 160
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    invoke-static {v3, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iget-object v3, p0, Lcom/opay/face/common/view/NewMaskView;->k:Landroid/graphics/Paint;

    .line 177
    .line 178
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Lcom/opay/face/common/view/NewMaskView;->A:[F

    .line 182
    .line 183
    aget v3, v2, v0

    .line 184
    .line 185
    const/4 v5, 0x1

    .line 186
    aget v2, v2, v5

    .line 187
    .line 188
    sget v5, Lcom/opay/face/common/view/NewMaskView;->I:F

    .line 189
    .line 190
    iget-object v6, p0, Lcom/opay/face/common/view/NewMaskView;->k:Landroid/graphics/Paint;

    .line 191
    .line 192
    invoke-virtual {p1, v3, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_3
    iget-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 199
    .line 200
    if-eqz v0, :cond_4

    .line 201
    .line 202
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->x:Landroid/graphics/Path;

    .line 203
    .line 204
    iget-object v1, p0, Lcom/opay/face/common/view/NewMaskView;->i:Landroid/graphics/Paint;

    .line 205
    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    .line 208
    .line 209
    :cond_4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/opay/face/common/view/NewMaskView;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBackCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->v:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->g:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFaceMaskRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->p:F

    .line 2
    .line 3
    return-void
.end method

.method public setLoading(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->l:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    sget p1, Lcom/opay/face/common/view/NewMaskView;->G:I

    .line 7
    .line 8
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    new-array p1, p1, [F

    .line 21
    .line 22
    fill-array-data p1, :array_0

    .line 23
    .line 24
    .line 25
    const-string v0, "progress"

    .line 26
    .line 27
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    const-wide/16 v0, 0x5dc

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    const/4 v0, -0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView;->t:Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    :cond_2
    iput v0, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setPlayProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->B:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRadiusRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->o:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/common/view/NewMaskView;->d()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRoundColor(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->l:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/opay/face/common/view/NewMaskView;->D:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget p1, Lcom/opay/face/common/view/NewMaskView;->G:I

    .line 9
    .line 10
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->f:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/opay/face/common/view/NewMaskView;->h:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/view/NewMaskView;->m:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
