.class public final Lteam/opay/business/transfer/flow/widget/ReceiptLayout;
.super Landroid/widget/FrameLayout;
.source "ReceiptLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001bR\u0016\u0010\"\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001bR\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\'\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u001bR\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/widget/ReceiptLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "paint",
        "Landroid/graphics/Path;",
        "b",
        "Landroid/graphics/Path;",
        "path",
        "c",
        "roundedPath",
        "",
        "d",
        "F",
        "cornerRadius",
        "e",
        "waveHeight",
        "f",
        "waveWidth",
        "g",
        "spacingWidth",
        "h",
        "I",
        "backgroundColor",
        "i",
        "remainingWidth",
        "j",
        "numGroups",
        "business-transfer-flow_release"
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

.field public final b:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:I

.field public i:F

.field public j:I


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

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->a:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->c:Landroid/graphics/Path;

    const/high16 v0, 0x41400000    # 12.0f

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 11
    const-class v1, Ljava/lang/Float;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    .line 12
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "return number type not support"

    if-eqz v4, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    .line 15
    :cond_2
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 17
    iput v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    const/high16 v0, 0x40e00000    # 7.0f

    .line 18
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 20
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_1

    .line 24
    :cond_4
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_1

    .line 25
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 26
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 27
    iput v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    const/high16 v0, 0x41600000    # 14.0f

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_2

    .line 34
    :cond_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_2

    .line 35
    :cond_8
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 36
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 37
    iput v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 40
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v1

    .line 42
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 43
    :cond_9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_3

    .line 44
    :cond_a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_3

    .line 45
    :cond_b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 46
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 47
    iput v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->h:I

    .line 49
    sget-object v0, Lteam/opay/business/transfer/flow/R$styleable;->ReceiptLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    :try_start_0
    sget p2, Lteam/opay/business/transfer/flow/R$styleable;->ReceiptLayout_rl_background_corners:I

    iget v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 51
    iput p2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 52
    sget p2, Lteam/opay/business/transfer/flow/R$styleable;->ReceiptLayout_rl_circle_width:I

    iget v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 53
    iput p2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 54
    sget p2, Lteam/opay/business/transfer/flow/R$styleable;->ReceiptLayout_rl_circle_padding:I

    iget v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 55
    iput p2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 56
    sget p2, Lteam/opay/business/transfer/flow/R$styleable;->ReceiptLayout_rl_background_color:I

    iget v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->h:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 57
    iput p2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget p1, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->h:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 63
    iput p1, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->i:F

    return-void

    :catchall_0
    move-exception p2

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 65
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->c:Landroid/graphics/Path;

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    int-to-float v1, v1

    .line 21
    iget v8, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 22
    .line 23
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move v5, v0

    .line 28
    move v6, v1

    .line 29
    move v7, v8

    .line 30
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->c:Landroid/graphics/Path;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->i:F

    .line 39
    .line 40
    const/high16 v3, -0x40800000    # -1.0f

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    cmpg-float v2, v2, v3

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    iget v3, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 49
    .line 50
    mul-float v2, v2, v3

    .line 51
    .line 52
    sub-float v2, v0, v2

    .line 53
    .line 54
    iget v3, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 55
    .line 56
    sub-float/2addr v2, v3

    .line 57
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 58
    .line 59
    add-float/2addr v3, v5

    .line 60
    div-float v5, v2, v3

    .line 61
    .line 62
    float-to-double v5, v5

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    double-to-float v5, v5

    .line 68
    float-to-int v5, v5

    .line 69
    iput v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->j:I

    .line 70
    .line 71
    int-to-float v6, v5

    .line 72
    mul-float v6, v6, v3

    .line 73
    .line 74
    sub-float/2addr v2, v6

    .line 75
    iget v3, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 76
    .line 77
    int-to-float v5, v5

    .line 78
    div-float/2addr v2, v5

    .line 79
    add-float/2addr v3, v2

    .line 80
    iput v3, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 81
    .line 82
    :cond_0
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    .line 92
    .line 93
    iget v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 94
    .line 95
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 96
    .line 97
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    .line 99
    .line 100
    :goto_0
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 101
    .line 102
    sub-float v5, v0, v5

    .line 103
    .line 104
    iget v6, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 105
    .line 106
    sub-float/2addr v5, v6

    .line 107
    cmpg-float v5, v2, v5

    .line 108
    .line 109
    if-gez v5, :cond_1

    .line 110
    .line 111
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 112
    .line 113
    int-to-float v7, v4

    .line 114
    div-float v7, v6, v7

    .line 115
    .line 116
    add-float/2addr v7, v2

    .line 117
    iget v8, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 118
    .line 119
    add-float/2addr v6, v2

    .line 120
    invoke-virtual {v5, v7, v8, v6, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 121
    .line 122
    .line 123
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 124
    .line 125
    iget v6, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 126
    .line 127
    add-float/2addr v6, v2

    .line 128
    iget v7, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 129
    .line 130
    add-float/2addr v6, v7

    .line 131
    invoke-virtual {v5, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    .line 133
    .line 134
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 135
    .line 136
    iget v6, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 137
    .line 138
    add-float/2addr v5, v6

    .line 139
    add-float/2addr v2, v5

    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    div-float v7, v6, v4

    .line 145
    .line 146
    add-float/2addr v7, v2

    .line 147
    iget v8, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 148
    .line 149
    add-float/2addr v2, v6

    .line 150
    invoke-virtual {v5, v7, v8, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 154
    .line 155
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 159
    .line 160
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 161
    .line 162
    sub-float v5, v1, v5

    .line 163
    .line 164
    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 168
    .line 169
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 170
    .line 171
    sub-float v5, v1, v5

    .line 172
    .line 173
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 177
    .line 178
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 182
    .line 183
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 184
    .line 185
    invoke-virtual {v5, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    .line 187
    .line 188
    :goto_1
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->d:F

    .line 189
    .line 190
    sub-float v5, v0, v5

    .line 191
    .line 192
    iget v6, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 193
    .line 194
    sub-float/2addr v5, v6

    .line 195
    cmpg-float v5, v2, v5

    .line 196
    .line 197
    if-gez v5, :cond_2

    .line 198
    .line 199
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 200
    .line 201
    div-float v7, v6, v4

    .line 202
    .line 203
    add-float/2addr v7, v2

    .line 204
    iget v8, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 205
    .line 206
    sub-float v8, v1, v8

    .line 207
    .line 208
    add-float/2addr v6, v2

    .line 209
    invoke-virtual {v5, v7, v8, v6, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 210
    .line 211
    .line 212
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 213
    .line 214
    iget v6, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 215
    .line 216
    add-float/2addr v6, v2

    .line 217
    iget v7, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 218
    .line 219
    add-float/2addr v6, v7

    .line 220
    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    .line 222
    .line 223
    iget v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->f:F

    .line 224
    .line 225
    iget v6, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->g:F

    .line 226
    .line 227
    add-float/2addr v5, v6

    .line 228
    add-float/2addr v2, v5

    .line 229
    goto :goto_1

    .line 230
    :cond_2
    iget-object v5, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 231
    .line 232
    div-float v4, v6, v4

    .line 233
    .line 234
    add-float/2addr v4, v2

    .line 235
    iget v7, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 236
    .line 237
    sub-float v7, v1, v7

    .line 238
    .line 239
    add-float/2addr v2, v6

    .line 240
    invoke-virtual {v5, v4, v7, v2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 244
    .line 245
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    .line 247
    .line 248
    iget-object v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 249
    .line 250
    iget v4, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 251
    .line 252
    sub-float v4, v1, v4

    .line 253
    .line 254
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 258
    .line 259
    iget v2, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->e:F

    .line 260
    .line 261
    sub-float/2addr v1, v2

    .line 262
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->b:Landroid/graphics/Path;

    .line 276
    .line 277
    iget-object v1, p0, Lteam/opay/business/transfer/flow/widget/ReceiptLayout;->a:Landroid/graphics/Paint;

    .line 278
    .line 279
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 280
    .line 281
    .line 282
    return-void
.end method
