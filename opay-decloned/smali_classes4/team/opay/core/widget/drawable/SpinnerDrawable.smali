.class public final Lteam/opay/core/widget/drawable/SpinnerDrawable;
.super Lteam/opay/core/widget/drawable/BaseInputDrawable;
.source "SpinnerDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ!\u0010\u0010\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\nR\u0016\u0010\u0015\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u001a\u001a\u00020\u000e8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010#R\u0014\u0010%\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010 R\u0014\u0010\'\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010 \u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/core/widget/drawable/SpinnerDrawable;",
        "Lteam/opay/core/widget/drawable/BaseInputDrawable;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "k",
        "(Landroid/graphics/Canvas;)V",
        "j",
        "",
        "text",
        "",
        "resId",
        "l",
        "(Ljava/lang/String;I)V",
        "draw",
        "g",
        "Ljava/lang/String;",
        "phoneCode",
        "h",
        "I",
        "b",
        "()I",
        "height",
        "Landroid/graphics/Paint;",
        "i",
        "Landroid/graphics/Paint;",
        "textPaint",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "textRect",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        "dropBox",
        "mSrcRect",
        "m",
        "mDstRect",
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
.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:I

.field public final i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1}, Lteam/opay/core/widget/drawable/BaseInputDrawable;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->g:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    invoke-static {v0}, Let;->h(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->h:I

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->i:Landroid/graphics/Paint;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v1, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->l:Landroid/graphics/Rect;

    .line 41
    .line 42
    new-instance v1, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->m:Landroid/graphics/Rect;

    .line 48
    .line 49
    sget v1, Lteam/opay/core/common/R$color;->black_85:I

    .line 50
    .line 51
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    sget v1, Lteam/opay/core/common/R$font;->roboto_400:I

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {p1, v1, v2}, Lwie;->n(Landroid/content/Context;II)Landroid/graphics/Typeface;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    .line 67
    .line 68
    const/high16 v1, 0x41600000    # 14.0f

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1}, Lteam/opay/core/widget/drawable/BaseInputDrawable;->i(Landroid/content/Context;F)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lid1;->a:Lid1;

    .line 82
    .line 83
    sget v1, Lteam/opay/core/common/R$drawable;->common_svg_arrow_right:I

    .line 84
    .line 85
    invoke-virtual {v0, p1, v1}, Lid1;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    return-void
.end method

.method private final j(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lteam/opay/core/widget/drawable/SpinnerDrawable;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    iget-object v2, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->l:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-object v4, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->m:Landroid/graphics/Rect;

    .line 39
    .line 40
    iget-object v3, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v3, v0

    .line 47
    iget-object v4, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    iget-object v1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->l:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget-object v2, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->m:Landroid/graphics/Rect;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private final k(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lteam/opay/core/widget/drawable/SpinnerDrawable;->b()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    div-int/2addr v1, v2

    .line 14
    int-to-float v1, v1

    .line 15
    int-to-float v3, v2

    .line 16
    div-float/2addr v0, v3

    .line 17
    add-float/2addr v1, v0

    .line 18
    sget-object v0, Lnk8;->c:Lnk8;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "draw -> baseLineY = "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v0, v3, v4, v2, v4}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->g:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iget-object v3, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->i:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
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
    sget-object v0, Lnk8;->c:Lnk8;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/widget/drawable/BaseInputDrawable;->g()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Lteam/opay/core/widget/drawable/SpinnerDrawable;->b()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "draw -> width = "

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", height = "

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j(Landroid/graphics/Canvas;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/drawable/BaseInputDrawable;->a(Landroid/graphics/Canvas;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public l(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "text"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lnk8;->c:Lnk8;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "dropBox -> width = "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", height = "

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-static {p2, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->g:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->i:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v5, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual {v1, p1, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget-object v4, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v6, "setInputValue -> textRect = "

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, ", width = "

    .line 90
    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p2, p1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->j:Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iget-object p2, p0, Lteam/opay/core/widget/drawable/SpinnerDrawable;->k:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    add-int/2addr p1, p2

    .line 123
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/drawable/BaseInputDrawable;->h(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 127
    .line 128
    .line 129
    return-void
.end method
