.class public final Lteam/opay/pay/android/views/PatternedView;
.super Landroid/view/View;
.source "PatternedView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0008R\u0016\u0010\u0015\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0014R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/android/views/PatternedView;",
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
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "attributeSet",
        "c",
        "a",
        "I",
        "topOutlineOffset",
        "b",
        "bottomOutlineOffset",
        "radius",
        "",
        "d",
        "Z",
        "isTop",
        "e",
        "bgColor",
        "Landroid/graphics/Paint;",
        "f",
        "Landroid/graphics/Paint;",
        "eraser",
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
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public final f:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    .line 2
    iput p1, p0, Lteam/opay/pay/android/views/PatternedView;->a:I

    const/4 p1, -0x8

    .line 3
    iput p1, p0, Lteam/opay/pay/android/views/PatternedView;->b:I

    const/16 p1, 0x20

    .line 4
    iput p1, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    const/16 p1, -0x100

    .line 5
    iput p1, p0, Lteam/opay/pay/android/views/PatternedView;->e:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iput-object p1, p0, Lteam/opay/pay/android/views/PatternedView;->f:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    new-instance p1, Lteam/opay/pay/android/views/PatternedView$a;

    invoke-direct {p1, p0}, Lteam/opay/pay/android/views/PatternedView$a;-><init>(Lteam/opay/pay/android/views/PatternedView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    .line 13
    iput v0, p0, Lteam/opay/pay/android/views/PatternedView;->a:I

    const/4 v0, -0x8

    .line 14
    iput v0, p0, Lteam/opay/pay/android/views/PatternedView;->b:I

    const/16 v0, 0x20

    .line 15
    iput v0, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    const/16 v0, -0x100

    .line 16
    iput v0, p0, Lteam/opay/pay/android/views/PatternedView;->e:I

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 18
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iput-object v0, p0, Lteam/opay/pay/android/views/PatternedView;->f:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 22
    new-instance v0, Lteam/opay/pay/android/views/PatternedView$a;

    invoke-direct {v0, p0}, Lteam/opay/pay/android/views/PatternedView$a;-><init>(Lteam/opay/pay/android/views/PatternedView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 23
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/PatternedView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 25
    iput p3, p0, Lteam/opay/pay/android/views/PatternedView;->a:I

    const/4 p3, -0x8

    .line 26
    iput p3, p0, Lteam/opay/pay/android/views/PatternedView;->b:I

    const/16 p3, 0x20

    .line 27
    iput p3, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    const/16 p3, -0x100

    .line 28
    iput p3, p0, Lteam/opay/pay/android/views/PatternedView;->e:I

    .line 29
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iput-object p3, p0, Lteam/opay/pay/android/views/PatternedView;->f:Landroid/graphics/Paint;

    const/4 p3, 0x0

    .line 33
    invoke-virtual {p0, v0, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 34
    new-instance p3, Lteam/opay/pay/android/views/PatternedView$a;

    invoke-direct {p3, p0}, Lteam/opay/pay/android/views/PatternedView$a;-><init>(Lteam/opay/pay/android/views/PatternedView;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/PatternedView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/android/views/PatternedView;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/android/views/PatternedView;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic b(Lteam/opay/pay/android/views/PatternedView;)I
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/pay/android/views/PatternedView;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/R$styleable;->PatternedView:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "obtainStyledAttributes(...)"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget p2, Lteam/opay/pay/R$styleable;->PatternedView_pv_radius:I

    .line 13
    .line 14
    iget v0, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    .line 21
    .line 22
    sget p2, Lteam/opay/pay/R$styleable;->PatternedView_pv_background:I

    .line 23
    .line 24
    iget v0, p0, Lteam/opay/pay/android/views/PatternedView;->e:I

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lteam/opay/pay/android/views/PatternedView;->e:I

    .line 31
    .line 32
    sget p2, Lteam/opay/pay/R$styleable;->PatternedView_pv_is_top:I

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput-boolean p2, p0, Lteam/opay/pay/android/views/PatternedView;->d:Z

    .line 40
    .line 41
    sget p2, Lteam/opay/pay/R$styleable;->PatternedView_pv_top_shadow_offset:I

    .line 42
    .line 43
    iget v0, p0, Lteam/opay/pay/android/views/PatternedView;->a:I

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iput p2, p0, Lteam/opay/pay/android/views/PatternedView;->a:I

    .line 50
    .line 51
    sget p2, Lteam/opay/pay/R$styleable;->PatternedView_pv_bottom_shadow_offset:I

    .line 52
    .line 53
    iget v0, p0, Lteam/opay/pay/android/views/PatternedView;->b:I

    .line 54
    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput p2, p0, Lteam/opay/pay/android/views/PatternedView;->b:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
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
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    iget v2, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v0, v2

    .line 23
    float-to-int v0, v0

    .line 24
    iget v2, p0, Lteam/opay/pay/android/views/PatternedView;->e:I

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    .line 32
    int-to-float v3, v2

    .line 33
    iget v4, p0, Lteam/opay/pay/android/views/PatternedView;->c:I

    .line 34
    .line 35
    int-to-float v5, v4

    .line 36
    mul-float v3, v3, v5

    .line 37
    .line 38
    iget-boolean v5, p0, Lteam/opay/pay/android/views/PatternedView;->d:Z

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v5, v1

    .line 45
    :goto_1
    div-int/lit8 v6, v4, 0x4

    .line 46
    .line 47
    sub-int/2addr v4, v6

    .line 48
    int-to-float v4, v4

    .line 49
    iget-object v6, p0, Lteam/opay/pay/android/views/PatternedView;->f:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method
