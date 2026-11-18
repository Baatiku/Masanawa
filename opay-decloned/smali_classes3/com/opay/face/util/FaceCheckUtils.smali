.class public Lcom/opay/face/util/FaceCheckUtils;
.super Ljava/lang/Object;
.source "FaceCheckUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "FaceCheckUtils"

.field public static b:I = 0x7

.field public static c:I = 0x7

.field public static d:I = 0x50

.field public static e:I = 0xc8

.field public static f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:Landroid/graphics/Rect;

.field public static l:I

.field public static m:J

.field public static n:I

.field public static o:I

.field public static p:D

.field public static q:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/face/util/FaceCheckUtils;->f:Ljava/util/Queue;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/opay/face/util/FaceCheckUtils;->g:Ljava/util/Queue;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    sput v0, Lcom/opay/face/util/FaceCheckUtils;->h:I

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    sput v1, Lcom/opay/face/util/FaceCheckUtils;->i:I

    .line 22
    .line 23
    sput v0, Lcom/opay/face/util/FaceCheckUtils;->j:I

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/opay/face/util/FaceCheckUtils;->k:Landroid/graphics/Rect;

    .line 31
    .line 32
    const/16 v0, 0x32

    .line 33
    .line 34
    sput v0, Lcom/opay/face/util/FaceCheckUtils;->l:I

    .line 35
    .line 36
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    sput-wide v0, Lcom/opay/face/util/FaceCheckUtils;->m:J

    .line 39
    .line 40
    const/16 v0, 0x60

    .line 41
    .line 42
    sput v0, Lcom/opay/face/util/FaceCheckUtils;->n:I

    .line 43
    .line 44
    const/16 v0, 0x61

    .line 45
    .line 46
    sput v0, Lcom/opay/face/util/FaceCheckUtils;->o:I

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->z()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget v2, Lcom/opay/face/util/FaceCheckUtils;->h:I

    .line 20
    .line 21
    if-gt v0, v2, :cond_1

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget v1, Lcom/opay/face/util/FaceCheckUtils;->i:I

    .line 28
    .line 29
    if-gt v0, v1, :cond_1

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    sget v0, Lcom/opay/face/util/FaceCheckUtils;->j:I

    .line 36
    .line 37
    if-le p0, v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    :goto_0
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->ERROR_POSE:Lcom/opay/face/phoneface/common/FaceState;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 47
    .line 48
    return-object p0
.end method

.method public static b(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 6

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/util/FaceCheckUtils;->k:Landroid/graphics/Rect;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->m()[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    aget v0, v0, v2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->m()[I

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    aget v2, v2, v3

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->m()[I

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    aget v3, v3, v1

    .line 27
    .line 28
    add-int/2addr v3, v0

    .line 29
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->m()[I

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x3

    .line 34
    aget v4, v4, v5

    .line 35
    .line 36
    add-int/2addr v4, v2

    .line 37
    new-instance v5, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v5, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/opay/face/util/FaceCheckUtils;->k:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->ERROR_FACE_OUTSIDE:Lcom/opay/face/phoneface/common/FaceState;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->m()[I

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    aget p0, p0, v1

    .line 58
    .line 59
    div-int/2addr p0, v1

    .line 60
    int-to-double v0, p0

    .line 61
    sget p0, Lcom/opay/face/util/FaceCheckUtils;->d:I

    .line 62
    .line 63
    int-to-double v2, p0

    .line 64
    cmpg-double p0, v0, v2

    .line 65
    .line 66
    if-gez p0, :cond_1

    .line 67
    .line 68
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->ERROR_FACE_SMALL:Lcom/opay/face/phoneface/common/FaceState;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_1
    sget p0, Lcom/opay/face/util/FaceCheckUtils;->e:I

    .line 72
    .line 73
    int-to-double v2, p0

    .line 74
    cmpl-double p0, v0, v2

    .line 75
    .line 76
    if-lez p0, :cond_2

    .line 77
    .line 78
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->ERROR_FACE_BIG:Lcom/opay/face/phoneface/common/FaceState;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_2
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_3
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->ERROR_UNKNOWN:Lcom/opay/face/phoneface/common/FaceState;

    .line 85
    .line 86
    return-object p0
.end method

.method public static c(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/sdk/entity/OFace;->l()[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget v0, p0, v0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    aget v2, p0, v1

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    div-int/2addr v0, v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aget v2, p0, v2

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    aget p0, p0, v3

    .line 20
    .line 21
    add-int/2addr v2, p0

    .line 22
    div-int/2addr v2, v1

    .line 23
    invoke-static {v0, v2}, Lcom/opay/face/util/FaceCheckUtils;->j(II)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->ERROR_SHAKE:Lcom/opay/face/phoneface/common/FaceState;

    .line 33
    .line 34
    :goto_0
    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 36
    .line 37
    return-object p0
.end method

.method public static d(Ljava/util/Queue;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    move-wide v3, v1

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    int-to-double v6, v6

    .line 29
    add-double/2addr v3, v6

    .line 30
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    mul-int v6, v6, v5

    .line 39
    .line 40
    int-to-double v5, v6

    .line 41
    add-double/2addr v1, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    int-to-double v5, v0

    .line 44
    div-double/2addr v1, v5

    .line 45
    div-double/2addr v3, v5

    .line 46
    mul-double v3, v3, v3

    .line 47
    .line 48
    sub-double/2addr v1, v3

    .line 49
    return-wide v1
.end method

.method public static e()I
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/util/FaceCheckUtils;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/util/FaceCheckUtils;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/util/FaceCheckUtils;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static h()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/opay/face/util/FaceCheckUtils;->p:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static i()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/opay/face/util/FaceCheckUtils;->q:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static j(II)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/opay/face/util/FaceCheckUtils;->f:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    sget-object p0, Lcom/opay/face/util/FaceCheckUtils;->g:Ljava/util/Queue;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/opay/face/util/FaceCheckUtils;->f:Ljava/util/Queue;

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sget p1, Lcom/opay/face/util/FaceCheckUtils;->b:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-le p0, p1, :cond_2

    .line 29
    .line 30
    sget-object p0, Lcom/opay/face/util/FaceCheckUtils;->f:Ljava/util/Queue;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/opay/face/util/FaceCheckUtils;->d(Ljava/util/Queue;)D

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    sget-object v1, Lcom/opay/face/util/FaceCheckUtils;->g:Ljava/util/Queue;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/opay/face/util/FaceCheckUtils;->d(Ljava/util/Queue;)D

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    sget-object v3, Lcom/opay/face/util/FaceCheckUtils;->a:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "x\u65b9\u5dee\uff1a"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v5, "y\u65b9\u5dee\uff1a"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v4, Lcom/opay/face/util/FaceCheckUtils;->f:Ljava/util/Queue;

    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    sget-object v4, Lcom/opay/face/util/FaceCheckUtils;->g:Ljava/util/Queue;

    .line 90
    .line 91
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget v4, Lcom/opay/face/util/FaceCheckUtils;->c:I

    .line 95
    .line 96
    int-to-double v5, v4

    .line 97
    cmpl-double v7, p0, v5

    .line 98
    .line 99
    if-gtz v7, :cond_1

    .line 100
    .line 101
    int-to-double v4, v4

    .line 102
    cmpl-double v6, v1, v4

    .line 103
    .line 104
    if-lez v6, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const/4 p0, 0x1

    .line 108
    return p0

    .line 109
    :cond_1
    :goto_0
    const-string v4, "\u8bf7\u4e0d\u8981\u6643\u52a8"

    .line 110
    .line 111
    invoke-static {v3, v4}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-wide p0, Lcom/opay/face/util/FaceCheckUtils;->p:D

    .line 115
    .line 116
    sput-wide v1, Lcom/opay/face/util/FaceCheckUtils;->q:D

    .line 117
    .line 118
    :cond_2
    return v0
.end method

.method public static k(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/opay/face/util/FaceCheckUtils;->k:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-void
.end method

.method public static l(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static m(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static n(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public static o(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public static p(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public static q(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static r(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opay/face/util/FaceCheckUtils;->h:I

    .line 2
    .line 3
    return-void
.end method
