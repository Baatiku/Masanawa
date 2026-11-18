.class public final Lcom/opay/team/newhome/reward/SimpleProcessLineView;
.super Landroid/view/View;
.source "SimpleProcessLineView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ;\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0008\u0008\u0003\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0003\u0010\u000f\u001a\u00020\t2\u0008\u0008\u0003\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u001eR\u0016\u0010 \u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001eR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00062"
    }
    d2 = {
        "Lcom/opay/team/newhome/reward/SimpleProcessLineView;",
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
        "process",
        "total",
        "startColor",
        "processColor",
        "totalColor",
        "",
        "a",
        "(IIIII)V",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "I",
        "b",
        "finishColor",
        "Landroid/graphics/Paint;",
        "c",
        "Landroid/graphics/Paint;",
        "totalPaint",
        "d",
        "finishPaint",
        "",
        "e",
        "F",
        "radio",
        "f",
        "Ljava/lang/Float;",
        "finishThreshold",
        "Landroid/graphics/Path;",
        "g",
        "Landroid/graphics/Path;",
        "progressPath",
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

.field public final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:F

.field public f:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Landroid/graphics/Path;
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lteam/opay/pay/R$color;->osdk_color_00DDD0:I

    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->a:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lteam/opay/pay/R$color;->mint:I

    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Lkmf;->g(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->e:F

    .line 7
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/pay/R$color;->osdk_color_00DDD0:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->a:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/pay/R$color;->mint:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->c:Landroid/graphics/Paint;

    .line 16
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->d:Landroid/graphics/Paint;

    const/4 v0, 0x3

    .line 17
    invoke-static {v0}, Lkmf;->g(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->e:F

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/pay/R$color;->osdk_color_00DDD0:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->a:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/pay/R$color;->mint:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b:I

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->c:Landroid/graphics/Paint;

    .line 27
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->d:Landroid/graphics/Paint;

    const/4 p3, 0x3

    .line 28
    invoke-static {p3}, Lkmf;->g(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->e:F

    .line 29
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    const/4 p3, 0x1

    .line 30
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public static synthetic b(Lcom/opay/team/newhome/reward/SimpleProcessLineView;IIIIIILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget p7, Lteam/opay/pay/R$color;->osdk_color_00DDD0:I

    .line 10
    .line 11
    invoke-static {p3, p7}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    :cond_0
    move v3, p3

    .line 16
    and-int/lit8 p3, p6, 0x8

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    sget p4, Lteam/opay/pay/R$color;->mint:I

    .line 25
    .line 26
    invoke-static {p3, p4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    :cond_1
    move v4, p4

    .line 31
    and-int/lit8 p3, p6, 0x10

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    sget p4, Lteam/opay/pay/R$color;->osdk_color_B2EAD5:I

    .line 40
    .line 41
    invoke-static {p3, p4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    :cond_2
    move v5, p5

    .line 46
    move-object v0, p0

    .line 47
    move v1, p1

    .line 48
    move v2, p2

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->a(IIIII)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final a(IIIII)V
    .locals 0

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-gtz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    div-float/2addr p1, p2

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->f:Ljava/lang/Float;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->c:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    iput p3, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->a:I

    .line 21
    .line 22
    iput p4, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-string v1, "canvas"

    .line 6
    .line 7
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->f:Ljava/lang/Float;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v15, v1

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    sub-float v14, v1, v2

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v11, v1

    .line 43
    sub-float v12, v14, v15

    .line 44
    .line 45
    add-float v1, v15, v14

    .line 46
    .line 47
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    .line 49
    div-float v13, v1, v2

    .line 50
    .line 51
    div-float v1, v12, v2

    .line 52
    .line 53
    iget v2, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->e:F

    .line 54
    .line 55
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    const/4 v2, 0x0

    .line 60
    iget-object v7, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->c:Landroid/graphics/Paint;

    .line 61
    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    move v3, v15

    .line 65
    move v4, v11

    .line 66
    move v5, v14

    .line 67
    move v6, v8

    .line 68
    move-object/from16 v16, v7

    .line 69
    .line 70
    move v7, v8

    .line 71
    move/from16 v17, v8

    .line 72
    .line 73
    move-object/from16 v8, v16

    .line 74
    .line 75
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    cmpl-float v2, v10, v1

    .line 80
    .line 81
    if-lez v2, :cond_3

    .line 82
    .line 83
    mul-float v11, v11, v10

    .line 84
    .line 85
    cmpg-float v2, v11, v1

    .line 86
    .line 87
    if-gtz v2, :cond_0

    .line 88
    .line 89
    return-void

    .line 90
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    .line 92
    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iget-object v3, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 99
    .line 100
    .line 101
    cmpl-float v3, v2, v12

    .line 102
    .line 103
    if-ltz v3, :cond_1

    .line 104
    .line 105
    iget-object v11, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 106
    .line 107
    const/4 v12, 0x0

    .line 108
    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 109
    .line 110
    move v13, v15

    .line 111
    move v3, v14

    .line 112
    move v14, v2

    .line 113
    move v4, v15

    .line 114
    move v15, v3

    .line 115
    move/from16 v16, v17

    .line 116
    .line 117
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    move v3, v14

    .line 122
    move v4, v15

    .line 123
    move/from16 v5, v17

    .line 124
    .line 125
    sub-float v6, v2, v5

    .line 126
    .line 127
    cmpg-float v7, v6, v5

    .line 128
    .line 129
    if-gez v7, :cond_2

    .line 130
    .line 131
    iget-object v6, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 132
    .line 133
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 134
    .line 135
    invoke-virtual {v6, v5, v13, v5, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v7, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 140
    .line 141
    invoke-virtual {v7, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    .line 143
    .line 144
    iget-object v7, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 145
    .line 146
    invoke-virtual {v7, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    .line 148
    .line 149
    iget-object v11, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 150
    .line 151
    sub-float v12, v6, v5

    .line 152
    .line 153
    add-float v14, v6, v5

    .line 154
    .line 155
    const/high16 v17, 0x43340000    # 180.0f

    .line 156
    .line 157
    const/16 v18, 0x0

    .line 158
    .line 159
    const/high16 v16, 0x43870000    # 270.0f

    .line 160
    .line 161
    move v13, v4

    .line 162
    move v15, v3

    .line 163
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 164
    .line 165
    .line 166
    iget-object v5, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 167
    .line 168
    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    .line 170
    .line 171
    iget-object v5, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 174
    .line 175
    .line 176
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, v1, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->g:Landroid/graphics/Path;

    .line 183
    .line 184
    iget-object v2, v0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->d:Landroid/graphics/Paint;

    .line 185
    .line 186
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 190
    .line 191
    .line 192
    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/LinearGradient;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    int-to-float p2, p2

    .line 11
    const/high16 p3, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float v2, p2, p3

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    int-to-float v3, p2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    int-to-float p2, p2

    .line 25
    div-float v4, p2, p3

    .line 26
    .line 27
    iget v5, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->a:I

    .line 28
    .line 29
    iget v6, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->b:I

    .line 30
    .line 31
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    move-object v0, p1

    .line 35
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/opay/team/newhome/reward/SimpleProcessLineView;->d:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 41
    .line 42
    .line 43
    return-void
.end method
