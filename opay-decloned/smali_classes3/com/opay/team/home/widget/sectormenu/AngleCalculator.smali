.class public Lcom/opay/team/home/widget/sectormenu/AngleCalculator;
.super Ljava/lang/Object;
.source "AngleCalculator.java"


# instance fields
.field public a:D

.field public b:D

.field public c:Z


# direct methods
.method public constructor <init>(FFI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sub-float v0, p2, p1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput-boolean v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->c:Z

    .line 16
    .line 17
    const/high16 v0, 0x43b40000    # 360.0f

    .line 18
    .line 19
    rem-float/2addr p1, v0

    .line 20
    rem-float/2addr p2, v0

    .line 21
    float-to-double v0, p1

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->a:D

    .line 27
    .line 28
    float-to-double p1, p2

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    if-le p3, v2, :cond_1

    .line 34
    .line 35
    iget-wide v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->a:D

    .line 36
    .line 37
    sub-double v0, p1, v0

    .line 38
    .line 39
    add-int/lit8 v2, p3, -0x1

    .line 40
    .line 41
    int-to-double v2, v2

    .line 42
    div-double/2addr v0, v2

    .line 43
    iput-wide v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->b:D

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->a(DI)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(DI)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->a:D

    .line 6
    .line 7
    cmpl-double v2, v0, p1

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    int-to-double v0, p3

    .line 17
    div-double/2addr p1, v0

    .line 18
    iget-wide v0, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->b:D

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmpg-double p3, v0, v2

    .line 23
    .line 24
    if-gez p3, :cond_0

    .line 25
    .line 26
    neg-double p1, p1

    .line 27
    iput-wide p1, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->b:D

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-wide p1, p0, Lcom/opay/team/home/widget/sectormenu/AngleCalculator;->b:D

    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
