.class public final Lteam/opay/core/widget/CouponView;
.super Landroid/widget/LinearLayout;
.source "CouponView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001aR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001aR\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001aR\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u001aR\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/core/widget/CouponView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "w",
        "h",
        "oldw",
        "oldh",
        "",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "paint",
        "b",
        "I",
        "circlePadding",
        "c",
        "circleRadius",
        "d",
        "circleNum",
        "e",
        "remain",
        "f",
        "mHeight",
        "g",
        "bgColor",
        "",
        "Z",
        "showTop",
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
.field public final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z


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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/CouponView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/CouponView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lteam/opay/core/widget/CouponView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xa

    .line 6
    iput v1, p0, Lteam/opay/core/widget/CouponView;->b:I

    const/16 v1, 0xe

    .line 7
    iput v1, p0, Lteam/opay/core/widget/CouponView;->c:I

    .line 8
    sget-object v1, Lgh2;->a:Lgh2;

    const-string v2, "#FFFFFF"

    invoke-virtual {v1, v2}, Lgh2;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lteam/opay/core/widget/CouponView;->g:I

    .line 9
    sget-object v1, Lteam/opay/core/common/R$styleable;->CouponView:[I

    const-string v2, "CouponView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lteam/opay/core/common/R$styleable;->CouponView_oms_circle_radius:I

    iget v1, p0, Lteam/opay/core/widget/CouponView;->c:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 12
    iput p2, p0, Lteam/opay/core/widget/CouponView;->c:I

    .line 13
    sget v1, Lteam/opay/core/common/R$styleable;->CouponView_oms_circle_padding:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 14
    iput p2, p0, Lteam/opay/core/widget/CouponView;->b:I

    .line 15
    sget p2, Lteam/opay/core/common/R$styleable;->CouponView_oms_circle_background:I

    iget v1, p0, Lteam/opay/core/widget/CouponView;->g:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lteam/opay/core/widget/CouponView;->g:I

    .line 16
    sget p2, Lteam/opay/core/common/R$styleable;->CouponView_oms_circle_top:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lteam/opay/core/widget/CouponView;->h:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 19
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget p1, p0, Lteam/opay/core/widget/CouponView;->g:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/widget/CouponView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
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
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lteam/opay/core/widget/CouponView;->d:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    iget v2, p0, Lteam/opay/core/widget/CouponView;->c:I

    .line 15
    .line 16
    iget v3, p0, Lteam/opay/core/widget/CouponView;->b:I

    .line 17
    .line 18
    add-int v4, v2, v3

    .line 19
    .line 20
    iget v5, p0, Lteam/opay/core/widget/CouponView;->e:I

    .line 21
    .line 22
    div-int/lit8 v5, v5, 0x2

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    mul-int/lit8 v5, v2, 0x2

    .line 26
    .line 27
    add-int/2addr v3, v5

    .line 28
    mul-int v3, v3, v1

    .line 29
    .line 30
    add-int/2addr v4, v3

    .line 31
    int-to-float v3, v4

    .line 32
    iget v4, p0, Lteam/opay/core/widget/CouponView;->f:I

    .line 33
    .line 34
    int-to-float v4, v4

    .line 35
    int-to-float v2, v2

    .line 36
    iget-object v5, p0, Lteam/opay/core/widget/CouponView;->a:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v2, p0, Lteam/opay/core/widget/CouponView;->h:Z

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget v2, p0, Lteam/opay/core/widget/CouponView;->c:I

    .line 46
    .line 47
    int-to-float v2, v2

    .line 48
    iget-object v4, p0, Lteam/opay/core/widget/CouponView;->a:Landroid/graphics/Paint;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lteam/opay/core/widget/CouponView;->f:I

    .line 5
    .line 6
    iget p2, p0, Lteam/opay/core/widget/CouponView;->b:I

    .line 7
    .line 8
    sub-int p3, p1, p2

    .line 9
    .line 10
    iget p4, p0, Lteam/opay/core/widget/CouponView;->c:I

    .line 11
    .line 12
    mul-int/lit8 v0, p4, 0x2

    .line 13
    .line 14
    add-int/2addr v0, p2

    .line 15
    div-int/2addr p3, v0

    .line 16
    iput p3, p0, Lteam/opay/core/widget/CouponView;->d:I

    .line 17
    .line 18
    iget p3, p0, Lteam/opay/core/widget/CouponView;->e:I

    .line 19
    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    sub-int/2addr p1, p2

    .line 23
    mul-int/lit8 p4, p4, 0x2

    .line 24
    .line 25
    add-int/2addr p4, p2

    .line 26
    rem-int/2addr p1, p4

    .line 27
    iput p1, p0, Lteam/opay/core/widget/CouponView;->e:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method
