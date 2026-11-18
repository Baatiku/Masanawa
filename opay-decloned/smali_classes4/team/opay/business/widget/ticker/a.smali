.class public Lteam/opay/business/widget/ticker/a;
.super Ljava/lang/Object;
.source "TickerColumn.java"


# instance fields
.field public a:[Lteam/opay/business/widget/ticker/TickerCharacterList;

.field public final b:Lteam/opay/business/widget/ticker/b;

.field public c:C

.field public d:C

.field public e:[C

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I


# direct methods
.method public constructor <init>([Lteam/opay/business/widget/ticker/TickerCharacterList;Lteam/opay/business/widget/ticker/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-char v0, p0, Lteam/opay/business/widget/ticker/a;->c:C

    .line 6
    .line 7
    iput-char v0, p0, Lteam/opay/business/widget/ticker/a;->d:C

    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/widget/ticker/a;->a:[Lteam/opay/business/widget/ticker/TickerCharacterList;

    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/business/widget/ticker/a;->b:Lteam/opay/business/widget/ticker/b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/a;->b:Lteam/opay/business/widget/ticker/b;

    .line 2
    .line 3
    iget-char v1, p0, Lteam/opay/business/widget/ticker/a;->d:C

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/business/widget/ticker/b;->c(C)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lteam/opay/business/widget/ticker/a;->l:F

    .line 10
    .line 11
    iget v2, p0, Lteam/opay/business/widget/ticker/a;->m:F

    .line 12
    .line 13
    cmpl-float v1, v1, v2

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    cmpl-float v1, v2, v0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->m:F

    .line 22
    .line 23
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->l:F

    .line 24
    .line 25
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->n:F

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13

    .line 1
    iget-object v3, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 2
    .line 3
    iget v4, p0, Lteam/opay/business/widget/ticker/a;->h:I

    .line 4
    .line 5
    iget v5, p0, Lteam/opay/business/widget/ticker/a;->i:F

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lteam/opay/business/widget/ticker/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;[CIF)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->h:I

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 21
    .line 22
    aget-char v0, v1, v0

    .line 23
    .line 24
    iput-char v0, p0, Lteam/opay/business/widget/ticker/a;->c:C

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->i:F

    .line 27
    .line 28
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->o:F

    .line 29
    .line 30
    :cond_1
    iget-object v4, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 31
    .line 32
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->h:I

    .line 33
    .line 34
    add-int/lit8 v5, v0, 0x1

    .line 35
    .line 36
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->i:F

    .line 37
    .line 38
    iget v1, p0, Lteam/opay/business/widget/ticker/a;->j:F

    .line 39
    .line 40
    sub-float v6, v0, v1

    .line 41
    .line 42
    move-object v1, p0

    .line 43
    move-object v2, p1

    .line 44
    move-object v3, p2

    .line 45
    invoke-virtual/range {v1 .. v6}, Lteam/opay/business/widget/ticker/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;[CIF)Z

    .line 46
    .line 47
    .line 48
    iget-object v10, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 49
    .line 50
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->h:I

    .line 51
    .line 52
    add-int/lit8 v11, v0, -0x1

    .line 53
    .line 54
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->i:F

    .line 55
    .line 56
    iget v1, p0, Lteam/opay/business/widget/ticker/a;->j:F

    .line 57
    .line 58
    add-float v12, v0, v1

    .line 59
    .line 60
    move-object v7, p0

    .line 61
    move-object v8, p1

    .line 62
    move-object v9, p2

    .line 63
    invoke-virtual/range {v7 .. v12}, Lteam/opay/business/widget/ticker/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;[CIF)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;[CIF)Z
    .locals 8

    .line 1
    if-ltz p4, :cond_0

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    if-ge p4, v0, :cond_0

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p3

    .line 10
    move v3, p4

    .line 11
    move v6, p5

    .line 12
    move-object v7, p2

    .line 13
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public d()C
    .locals 1

    .line 1
    iget-char v0, p0, Lteam/opay/business/widget/ticker/a;->c:C

    .line 2
    .line 3
    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/a;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->l:F

    .line 5
    .line 6
    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/a;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->n:F

    .line 5
    .line 6
    return v0
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/a;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->l:F

    .line 5
    .line 6
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->n:F

    .line 7
    .line 8
    return-void
.end method

.method public h(F)V
    .locals 6

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-char v1, p0, Lteam/opay/business/widget/ticker/a;->d:C

    .line 8
    .line 9
    iput-char v1, p0, Lteam/opay/business/widget/ticker/a;->c:C

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lteam/opay/business/widget/ticker/a;->o:F

    .line 13
    .line 14
    iput v1, p0, Lteam/opay/business/widget/ticker/a;->p:F

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lteam/opay/business/widget/ticker/a;->b:Lteam/opay/business/widget/ticker/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/business/widget/ticker/b;->b()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Lteam/opay/business/widget/ticker/a;->g:I

    .line 23
    .line 24
    iget v3, p0, Lteam/opay/business/widget/ticker/a;->f:I

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    mul-float v2, v2, v1

    .line 33
    .line 34
    mul-float v2, v2, p1

    .line 35
    .line 36
    div-float/2addr v2, v1

    .line 37
    float-to-int v3, v2

    .line 38
    int-to-float v4, v3

    .line 39
    sub-float/2addr v2, v4

    .line 40
    iget v4, p0, Lteam/opay/business/widget/ticker/a;->p:F

    .line 41
    .line 42
    sub-float/2addr v0, p1

    .line 43
    mul-float v4, v4, v0

    .line 44
    .line 45
    mul-float v2, v2, v1

    .line 46
    .line 47
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->q:I

    .line 48
    .line 49
    int-to-float v5, v0

    .line 50
    mul-float v2, v2, v5

    .line 51
    .line 52
    add-float/2addr v2, v4

    .line 53
    iput v2, p0, Lteam/opay/business/widget/ticker/a;->i:F

    .line 54
    .line 55
    iget v2, p0, Lteam/opay/business/widget/ticker/a;->f:I

    .line 56
    .line 57
    mul-int v3, v3, v0

    .line 58
    .line 59
    add-int/2addr v2, v3

    .line 60
    iput v2, p0, Lteam/opay/business/widget/ticker/a;->h:I

    .line 61
    .line 62
    iput v1, p0, Lteam/opay/business/widget/ticker/a;->j:F

    .line 63
    .line 64
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->k:F

    .line 65
    .line 66
    iget v1, p0, Lteam/opay/business/widget/ticker/a;->m:F

    .line 67
    .line 68
    sub-float/2addr v1, v0

    .line 69
    mul-float v1, v1, p1

    .line 70
    .line 71
    add-float/2addr v0, v1

    .line 72
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->l:F

    .line 73
    .line 74
    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lteam/opay/business/widget/ticker/a;->a:[Lteam/opay/business/widget/ticker/TickerCharacterList;

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    if-ge v2, v4, :cond_1

    .line 11
    .line 12
    aget-object v3, v3, v2

    .line 13
    .line 14
    iget-char v4, p0, Lteam/opay/business/widget/ticker/a;->c:C

    .line 15
    .line 16
    iget-char v5, p0, Lteam/opay/business/widget/ticker/a;->d:C

    .line 17
    .line 18
    iget-object v6, p0, Lteam/opay/business/widget/ticker/a;->b:Lteam/opay/business/widget/ticker/b;

    .line 19
    .line 20
    invoke-virtual {v6}, Lteam/opay/business/widget/ticker/b;->d()Lteam/opay/business/widget/ticker/TickerView$ScrollingDirection;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v3, v4, v5, v6}, Lteam/opay/business/widget/ticker/TickerCharacterList;->a(CCLteam/opay/business/widget/ticker/TickerView$ScrollingDirection;)Lteam/opay/business/widget/ticker/TickerCharacterList$CharacterIndices;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v4, p0, Lteam/opay/business/widget/ticker/a;->a:[Lteam/opay/business/widget/ticker/TickerCharacterList;

    .line 31
    .line 32
    aget-object v4, v4, v2

    .line 33
    .line 34
    invoke-virtual {v4}, Lteam/opay/business/widget/ticker/TickerCharacterList;->b()[C

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iput-object v4, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 39
    .line 40
    iget v4, v3, Lteam/opay/business/widget/ticker/TickerCharacterList$CharacterIndices;->a:I

    .line 41
    .line 42
    iput v4, p0, Lteam/opay/business/widget/ticker/a;->f:I

    .line 43
    .line 44
    iget v3, v3, Lteam/opay/business/widget/ticker/TickerCharacterList$CharacterIndices;->b:I

    .line 45
    .line 46
    iput v3, p0, Lteam/opay/business/widget/ticker/a;->g:I

    .line 47
    .line 48
    :cond_0
    add-int/2addr v2, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    iget-char v2, p0, Lteam/opay/business/widget/ticker/a;->c:C

    .line 55
    .line 56
    iget-char v3, p0, Lteam/opay/business/widget/ticker/a;->d:C

    .line 57
    .line 58
    if-ne v2, v3, :cond_2

    .line 59
    .line 60
    new-array v0, v0, [C

    .line 61
    .line 62
    aput-char v2, v0, v1

    .line 63
    .line 64
    iput-object v0, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 65
    .line 66
    iput v1, p0, Lteam/opay/business/widget/ticker/a;->g:I

    .line 67
    .line 68
    iput v1, p0, Lteam/opay/business/widget/ticker/a;->f:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v4, 0x2

    .line 72
    new-array v4, v4, [C

    .line 73
    .line 74
    aput-char v2, v4, v1

    .line 75
    .line 76
    aput-char v3, v4, v0

    .line 77
    .line 78
    iput-object v4, p0, Lteam/opay/business/widget/ticker/a;->e:[C

    .line 79
    .line 80
    iput v1, p0, Lteam/opay/business/widget/ticker/a;->f:I

    .line 81
    .line 82
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->g:I

    .line 83
    .line 84
    :cond_3
    :goto_1
    return-void
.end method

.method public j([Lteam/opay/business/widget/ticker/TickerCharacterList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/a;->a:[Lteam/opay/business/widget/ticker/TickerCharacterList;

    .line 2
    .line 3
    return-void
.end method

.method public k(C)V
    .locals 1

    .line 1
    iput-char p1, p0, Lteam/opay/business/widget/ticker/a;->d:C

    .line 2
    .line 3
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->l:F

    .line 4
    .line 5
    iput v0, p0, Lteam/opay/business/widget/ticker/a;->k:F

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/widget/ticker/a;->b:Lteam/opay/business/widget/ticker/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lteam/opay/business/widget/ticker/b;->c(C)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lteam/opay/business/widget/ticker/a;->m:F

    .line 14
    .line 15
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->k:F

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lteam/opay/business/widget/ticker/a;->n:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/business/widget/ticker/a;->i()V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lteam/opay/business/widget/ticker/a;->g:I

    .line 27
    .line 28
    iget v0, p0, Lteam/opay/business/widget/ticker/a;->f:I

    .line 29
    .line 30
    if-lt p1, v0, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, -0x1

    .line 35
    :goto_0
    iput p1, p0, Lteam/opay/business/widget/ticker/a;->q:I

    .line 36
    .line 37
    iget p1, p0, Lteam/opay/business/widget/ticker/a;->o:F

    .line 38
    .line 39
    iput p1, p0, Lteam/opay/business/widget/ticker/a;->p:F

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lteam/opay/business/widget/ticker/a;->o:F

    .line 43
    .line 44
    return-void
.end method
