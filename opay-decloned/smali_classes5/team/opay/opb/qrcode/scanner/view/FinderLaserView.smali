.class public final Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;
.super Landroid/view/View;
.source "FinderLaserView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u0016J\u0017\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u000c\u00a2\u0006\u0004\u0008!\u0010 J\u000f\u0010\"\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\"\u0010 J\u000f\u0010#\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008#\u0010 J\u000f\u0010$\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008$\u0010 J\u000f\u0010%\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008%\u0010 J\u0017\u0010&\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008&\u0010\u000eJ\u000f\u0010\'\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00101\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u00100R\u0018\u00102\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010.R\u0016\u00104\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00103R\u0014\u00106\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\'\u00105R\u0016\u00107\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u00105R\u0016\u00108\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00100R\u0016\u00109\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00100R\u0016\u0010;\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u00100R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00100R\u0016\u0010?\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u00103R\u0016\u0010A\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u00100R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010G\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u00105R\u001c\u0010L\u001a\n I*\u0004\u0018\u00010H0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010K\u00a8\u0006M"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/Rect;",
        "rect",
        "",
        "setFramingRect",
        "(Landroid/graphics/Rect;)V",
        "",
        "width",
        "setSpacingWidth",
        "(F)V",
        "",
        "enable",
        "setLaserEnabled",
        "(Z)V",
        "full",
        "setFullScreen",
        "use",
        "setUseDefaultFinderView",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "i",
        "()V",
        "g",
        "onDetachedFromWindow",
        "c",
        "d",
        "e",
        "h",
        "f",
        "()Z",
        "a",
        "Landroid/graphics/Rect;",
        "framingRect",
        "Landroid/graphics/Bitmap;",
        "b",
        "Landroid/graphics/Bitmap;",
        "originLaserBitmap",
        "Z",
        "isOriginLaserBitmapFromDrawable",
        "scaledLaserBitmap",
        "F",
        "laserTranslateY",
        "I",
        "defaultLaserHeight",
        "laserPictureHeight",
        "isLaserEnabled",
        "isFullScreen",
        "j",
        "isUseDefaultFinderView",
        "k",
        "isLaserAnimationPaused",
        "l",
        "spacingWidth",
        "m",
        "isDestroyed",
        "Landroid/graphics/Paint;",
        "n",
        "Landroid/graphics/Paint;",
        "laserPaint",
        "o",
        "lastAlpha",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "p",
        "Landroid/animation/ValueAnimator;",
        "animator",
        "opay-qrcode-scanner_release"
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
.field public a:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:F

.field public final f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:F

.field public m:Z

.field public final n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:I

.field public final p:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    .line 5
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->f:I

    .line 6
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->g:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->h:Z

    .line 8
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->j:Z

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->n:Landroid/graphics/Paint;

    const/16 p1, 0xff

    .line 12
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->o:I

    const/4 p1, 0x2

    .line 13
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    .line 15
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 16
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    new-instance p2, Lm16;

    invoke-direct {p2, p0}, Lm16;-><init>(Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 19
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->c()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->b(Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->d:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->a:Landroid/graphics/Rect;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->g:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    int-to-float v0, v0

    .line 31
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->l:F

    .line 32
    .line 33
    sub-float/2addr v0, v1

    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    mul-float v0, v0, p1

    .line 39
    .line 40
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->e:F

    .line 41
    .line 42
    const v0, 0x3f4ccccd    # 0.8f

    .line 43
    .line 44
    .line 45
    const/16 v1, 0xff

    .line 46
    .line 47
    cmpg-float v0, p1, v0

    .line 48
    .line 49
    if-gtz v0, :cond_3

    .line 50
    .line 51
    const/16 p1, 0xff

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    .line 56
    sub-float/2addr v0, p1

    .line 57
    const p1, 0x3e4ccccd    # 0.2f

    .line 58
    .line 59
    .line 60
    div-float/2addr v0, p1

    .line 61
    int-to-float p1, v1

    .line 62
    mul-float v0, v0, p1

    .line 63
    .line 64
    float-to-int p1, v0

    .line 65
    :goto_0
    const/4 v0, 0x0

    .line 66
    invoke-static {p1, v0, v1}, Lkotlin/ranges/c;->i(III)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->o:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->d()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->e()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lteam/opay/opb/qrcode/core/R$drawable;->qr_core_ic_scan_laser:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->e()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move v4, v0

    .line 31
    invoke-static/range {v2 .. v7}, Lmj3;->b(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->b:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->g:I

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->e()V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    const v0, 0x1dcf9f

    .line 2
    .line 3
    .line 4
    const v1, -0xe23061

    .line 5
    .line 6
    .line 7
    :try_start_0
    filled-new-array {v0, v1, v0}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 12
    .line 13
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 16
    .line 17
    .line 18
    iget v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->f:I

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v2, 0xc8

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lmj3;->b(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->b:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->f:I

    .line 32
    .line 33
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->g:I

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->k:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->h:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->j:Z

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->a:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->k:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :goto_2
    return-void
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->b:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->i:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->c:Z

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    int-to-float v1, p1

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    div-float/2addr v1, v2

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    mul-float v2, v2, v1

    .line 46
    .line 47
    float-to-int v1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->f:I

    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-ne v2, p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ne v2, v1, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    const/4 v2, 0x1

    .line 65
    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->d:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iput v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :goto_2
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->j:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->k:Z

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->m:Z

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->p:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->b:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->d:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
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
    :try_start_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->a:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->d:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    int-to-float v2, v2

    .line 33
    iget v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->e:F

    .line 34
    .line 35
    add-float/2addr v2, v3

    .line 36
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->n:Landroid/graphics/Paint;

    .line 37
    .line 38
    iget v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->o:I

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    .line 42
    .line 43
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    int-to-float v0, v0

    .line 46
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->n:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final setFramingRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->h(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setFullScreen(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->i:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->i:Z

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->c()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->a:Landroid/graphics/Rect;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->h(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setLaserEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSpacingWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->l:F

    .line 2
    .line 3
    return-void
.end method

.method public final setUseDefaultFinderView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->j:Z

    .line 2
    .line 3
    return-void
.end method
