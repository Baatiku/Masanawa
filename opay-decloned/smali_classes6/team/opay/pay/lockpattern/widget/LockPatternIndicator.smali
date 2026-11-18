.class public final Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;
.super Landroid/view/View;
.source "LockPatternIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$Companion;,
        Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 22\u00020\u0001:\u000234B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\r\u001a\u000e\u0012\u0008\u0012\u00060\u000bR\u00020\u000c\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0012J\u000f\u0010\u001d\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0012J\u000f\u0010\u001e\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0012J\u0017\u0010 \u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0016R\u0016\u0010\"\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010!R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010!R\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010!R\u0016\u0010&\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010!R\u0014\u0010\'\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010!R\u0016\u0010*\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010)R\u0016\u0010,\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R&\u00101\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0018\u00010.R\u00020\u00000-0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100\u00a8\u00065"
    }
    d2 = {
        "Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView;",
        "cells",
        "",
        "setIndicator",
        "(Ljava/util/List;)V",
        "g",
        "()V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "b",
        "e",
        "d",
        "c",
        "f",
        "a",
        "I",
        "mWidth",
        "mHeight",
        "cellBoxWidth",
        "cellBoxHeight",
        "radius",
        "offset",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "defaultPaint",
        "h",
        "selectPaint",
        "",
        "Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;",
        "i",
        "[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;",
        "mIndicatorCells",
        "j",
        "IndicatorCell",
        "Companion",
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


# static fields
.field public static final j:Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:I

.field public g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->j:Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$Companion;

    .line 8
    .line 9
    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->f:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->g:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->h:Landroid/graphics/Paint;

    const/4 p1, 0x3

    .line 8
    new-array p2, p1, [[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    new-array v0, p1, [Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->b()V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_7

    .line 7
    .line 8
    iget-object v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_1
    if-ge v4, v3, :cond_6

    .line 15
    .line 16
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 17
    .line 18
    aget-object v5, v5, v2

    .line 19
    .line 20
    aget-object v5, v5, v4

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->b()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 32
    .line 33
    aget-object v5, v5, v2

    .line 34
    .line 35
    aget-object v5, v5, v4

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->c()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    const/4 v5, 0x0

    .line 46
    :goto_2
    iget-object v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 47
    .line 48
    aget-object v7, v7, v2

    .line 49
    .line 50
    aget-object v7, v7, v4

    .line 51
    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    invoke-virtual {v7}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->d()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    int-to-float v6, v6

    .line 59
    :cond_1
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 60
    .line 61
    int-to-float v7, v7

    .line 62
    iget-object v8, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->g:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_2
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 69
    .line 70
    aget-object v5, v5, v2

    .line 71
    .line 72
    aget-object v5, v5, v4

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->b()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/4 v7, 0x1

    .line 81
    if-ne v5, v7, :cond_5

    .line 82
    .line 83
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 84
    .line 85
    aget-object v5, v5, v2

    .line 86
    .line 87
    aget-object v5, v5, v4

    .line 88
    .line 89
    if-eqz v5, :cond_3

    .line 90
    .line 91
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->c()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    int-to-float v5, v5

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    const/4 v5, 0x0

    .line 98
    :goto_3
    iget-object v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 99
    .line 100
    aget-object v7, v7, v2

    .line 101
    .line 102
    aget-object v7, v7, v4

    .line 103
    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    invoke-virtual {v7}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->d()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    int-to-float v6, v6

    .line 111
    :cond_4
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 112
    .line 113
    int-to-float v7, v7

    .line 114
    iget-object v8, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->h:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_7
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->d()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->c()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c()V
    .locals 11

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->c:I

    .line 2
    .line 3
    div-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x3

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_1
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 18
    .line 19
    aget-object v5, v5, v2

    .line 20
    .line 21
    new-instance v6, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 22
    .line 23
    mul-int v7, v0, v4

    .line 24
    .line 25
    iget v8, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 26
    .line 27
    add-int/2addr v7, v8

    .line 28
    iget v9, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->f:I

    .line 29
    .line 30
    add-int/2addr v7, v9

    .line 31
    mul-int v10, v0, v2

    .line 32
    .line 33
    add-int/2addr v10, v8

    .line 34
    add-int/2addr v10, v9

    .line 35
    mul-int/lit8 v8, v2, 0x3

    .line 36
    .line 37
    add-int/2addr v8, v4

    .line 38
    add-int/lit8 v8, v8, 0x1

    .line 39
    .line 40
    invoke-direct {v6, p0, v7, v10, v8}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;-><init>(Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;III)V

    .line 41
    .line 42
    .line 43
    aput-object v6, v5, v4

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->g:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget v2, Lteam/opay/pay/R$color;->osdk_color_e8e8e8:I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->g:Landroid/graphics/Paint;

    .line 23
    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->g:Landroid/graphics/Paint;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->h:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    sget v5, Lteam/opay/pay/R$color;->color_00B876:I

    .line 47
    .line 48
    invoke-static {v4, v5, v3}, Landroidx/core/content/res/ResourcesCompat;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->h:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->h:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->a:I

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->f:I

    .line 4
    .line 5
    mul-int/lit8 v2, v1, 0x2

    .line 6
    .line 7
    sub-int v2, v0, v2

    .line 8
    .line 9
    div-int/lit8 v2, v2, 0x4

    .line 10
    .line 11
    div-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    iput v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->b:I

    .line 16
    .line 17
    mul-int/lit8 v3, v1, 0x2

    .line 18
    .line 19
    sub-int/2addr v2, v3

    .line 20
    div-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    iput v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->d:I

    .line 23
    .line 24
    mul-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    sub-int/2addr v0, v1

    .line 27
    div-int/lit8 v0, v0, 0x3

    .line 28
    .line 29
    iput v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->c:I

    .line 30
    .line 31
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->c:I

    .line 2
    .line 3
    div-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x3

    .line 12
    if-ge v2, v3, :cond_3

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_1
    if-ge v4, v3, :cond_2

    .line 16
    .line 17
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 18
    .line 19
    aget-object v5, v5, v2

    .line 20
    .line 21
    aget-object v5, v5, v4

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    mul-int v6, v0, v4

    .line 26
    .line 27
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 28
    .line 29
    add-int/2addr v6, v7

    .line 30
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->f:I

    .line 31
    .line 32
    add-int/2addr v6, v7

    .line 33
    invoke-virtual {v5, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->f(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 37
    .line 38
    aget-object v5, v5, v2

    .line 39
    .line 40
    aget-object v5, v5, v4

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    mul-int v6, v0, v2

    .line 45
    .line 46
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e:I

    .line 47
    .line 48
    add-int/2addr v6, v7

    .line 49
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->f:I

    .line 50
    .line 51
    add-int/2addr v6, v7

    .line 52
    invoke-virtual {v5, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->g(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    iget-object v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_1
    if-ge v4, v3, :cond_1

    .line 15
    .line 16
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 17
    .line 18
    aget-object v5, v5, v2

    .line 19
    .line 20
    aget-object v5, v5, v4

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v5, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->e(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
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
    invoke-virtual {p0, p1}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->a(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
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
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->a:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->b:I

    .line 15
    .line 16
    iget p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->a:I

    .line 17
    .line 18
    if-ne p2, p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->e()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->f()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "the mWidth must be equals mHeight"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final setIndicator(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v1, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 27
    .line 28
    aget-object v4, v4, v3

    .line 29
    .line 30
    array-length v4, v4

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_1
    if-ge v5, v4, :cond_2

    .line 33
    .line 34
    iget-object v6, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 35
    .line 36
    aget-object v6, v6, v3

    .line 37
    .line 38
    aget-object v6, v6, v5

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->b()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-virtual {v6}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->a()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v7, v6, :cond_1

    .line 51
    .line 52
    iget-object v6, p0, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator;->i:[[Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;

    .line 53
    .line 54
    aget-object v6, v6, v3

    .line 55
    .line 56
    aget-object v6, v6, v5

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    invoke-virtual {v6, v7}, Lteam/opay/pay/lockpattern/widget/LockPatternIndicator$IndicatorCell;->e(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
