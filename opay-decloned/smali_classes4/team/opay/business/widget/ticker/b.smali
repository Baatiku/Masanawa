.class public Lteam/opay/business/widget/ticker/b;
.super Ljava/lang/Object;
.source "TickerDrawMetrics.java"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/16 v1, 0x100

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/widget/ticker/b;->b:Ljava/util/Map;

    .line 12
    .line 13
    sget-object v0, Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;->ANY:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/business/widget/ticker/b;->e:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 16
    .line 17
    iput-object p1, p0, Lteam/opay/business/widget/ticker/b;->a:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/b;->e()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/b;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/widget/ticker/b;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public c(C)F
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lteam/opay/business/widget/ticker/b;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Float;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/b;->a:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lteam/opay/business/widget/ticker/b;->b:Ljava/util/Map;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public d()Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/b;->e:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/b;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/widget/ticker/b;->a:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 13
    .line 14
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 15
    .line 16
    sub-float/2addr v1, v0

    .line 17
    iput v1, p0, Lteam/opay/business/widget/ticker/b;->c:F

    .line 18
    .line 19
    neg-float v0, v0

    .line 20
    iput v0, p0, Lteam/opay/business/widget/ticker/b;->d:F

    .line 21
    .line 22
    return-void
.end method

.method public f(Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/b;->e:Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 2
    .line 3
    return-void
.end method
