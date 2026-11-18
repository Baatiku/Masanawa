.class public final Lteam/opay/core/widget/fillet/AttrHelper;
.super Ljava/lang/Object;
.source "AttrHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ-\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0019R\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/core/widget/fillet/AttrHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "Landroid/view/View;",
        "targetView",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "",
        "b",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "c",
        "(Landroid/graphics/Canvas;)V",
        "a",
        "Landroid/view/View;",
        "",
        "F",
        "topLeftRadius",
        "topRightRadius",
        "d",
        "bottomLeftRadius",
        "e",
        "bottomRightRadius",
        "Landroid/graphics/Path;",
        "f",
        "Landroid/graphics/Path;",
        "mPath",
        "Landroid/graphics/RectF;",
        "g",
        "Landroid/graphics/RectF;",
        "mRectF",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "mPaint",
        "",
        "i",
        "[F",
        "radii",
        "common-base_release"
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
.field public final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public final f:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attrs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "targetView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->a:Landroid/view/View;

    .line 20
    .line 21
    new-instance p3, Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->f:Landroid/graphics/Path;

    .line 27
    .line 28
    new-instance p3, Landroid/graphics/RectF;

    .line 29
    .line 30
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->g:Landroid/graphics/RectF;

    .line 34
    .line 35
    new-instance p3, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/16 p3, 0x8

    .line 43
    .line 44
    new-array p3, p3, [F

    .line 45
    .line 46
    iput-object p3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->i:[F

    .line 47
    .line 48
    sget-object v0, Lteam/opay/core/common/R$styleable;->Fillet:[I

    .line 49
    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "obtainStyledAttributes(...)"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget p2, Lteam/opay/core/common/R$styleable;->Fillet_corp_corners:I

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    int-to-float p2, p2

    .line 67
    sget v1, Lteam/opay/core/common/R$styleable;->Fillet_corp_topLeftRadius:I

    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    iput v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->b:F

    .line 75
    .line 76
    sget v1, Lteam/opay/core/common/R$styleable;->Fillet_corp_topRightRadius:I

    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-float v1, v1

    .line 83
    iput v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->c:F

    .line 84
    .line 85
    sget v1, Lteam/opay/core/common/R$styleable;->Fillet_corp_bottomLeftRadius:I

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-float v1, v1

    .line 92
    iput v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->d:F

    .line 93
    .line 94
    sget v1, Lteam/opay/core/common/R$styleable;->Fillet_corp_bottomRightRadius:I

    .line 95
    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-float v1, v1

    .line 101
    iput v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->e:F

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    cmpl-float v1, p2, p1

    .line 108
    .line 109
    if-lez v1, :cond_0

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 p2, 0x0

    .line 113
    :goto_0
    iget v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->b:F

    .line 114
    .line 115
    cmpl-float v2, v1, p1

    .line 116
    .line 117
    if-lez v2, :cond_1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move v1, p2

    .line 121
    :goto_1
    iput v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->b:F

    .line 122
    .line 123
    iget v2, p0, Lteam/opay/core/widget/fillet/AttrHelper;->c:F

    .line 124
    .line 125
    cmpl-float v3, v2, p1

    .line 126
    .line 127
    if-lez v3, :cond_2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    move v2, p2

    .line 131
    :goto_2
    iput v2, p0, Lteam/opay/core/widget/fillet/AttrHelper;->c:F

    .line 132
    .line 133
    iget v3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->d:F

    .line 134
    .line 135
    cmpl-float v4, v3, p1

    .line 136
    .line 137
    if-lez v4, :cond_3

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_3
    move v3, p2

    .line 141
    :goto_3
    iput v3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->d:F

    .line 142
    .line 143
    iget v4, p0, Lteam/opay/core/widget/fillet/AttrHelper;->e:F

    .line 144
    .line 145
    cmpl-float p1, v4, p1

    .line 146
    .line 147
    if-lez p1, :cond_4

    .line 148
    .line 149
    move p2, v4

    .line 150
    :cond_4
    iput p2, p0, Lteam/opay/core/widget/fillet/AttrHelper;->e:F

    .line 151
    .line 152
    aput v1, p3, v0

    .line 153
    .line 154
    const/4 p1, 0x1

    .line 155
    aput v1, p3, p1

    .line 156
    .line 157
    const/4 p1, 0x2

    .line 158
    aput v2, p3, p1

    .line 159
    .line 160
    const/4 p1, 0x3

    .line 161
    aput v2, p3, p1

    .line 162
    .line 163
    const/4 p1, 0x4

    .line 164
    aput v3, p3, p1

    .line 165
    .line 166
    const/4 p1, 0x5

    .line 167
    aput v3, p3, p1

    .line 168
    .line 169
    const/4 p1, 0x6

    .line 170
    aput p2, p3, p1

    .line 171
    .line 172
    const/4 p1, 0x7

    .line 173
    aput p2, p3, p1

    .line 174
    .line 175
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 15
    .line 16
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->g:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget-object v2, p0, Lteam/opay/core/widget/fillet/AttrHelper;->i:[F

    .line 32
    .line 33
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->f:Landroid/graphics/Path;

    .line 39
    .line 40
    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->f:Landroid/graphics/Path;

    .line 48
    .line 49
    iget-object v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public final b(IIII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lteam/opay/core/widget/fillet/AttrHelper;->g:Landroid/graphics/RectF;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    int-to-float p2, p2

    .line 5
    const/4 p4, 0x0

    .line 6
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->f:Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->f:Landroid/graphics/Path;

    .line 15
    .line 16
    iget-object p2, p0, Lteam/opay/core/widget/fillet/AttrHelper;->g:Landroid/graphics/RectF;

    .line 17
    .line 18
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/core/widget/fillet/AttrHelper;->g:Landroid/graphics/RectF;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/core/widget/fillet/AttrHelper;->h:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
