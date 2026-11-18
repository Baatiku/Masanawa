.class public Lcom/opay/face/phoneface/common/MotionDetector;
.super Ljava/lang/Object;
.source "MotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/phoneface/common/MotionDetector$b;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "MotionDetector"

.field public static t:I = 0x320

.field public static u:I = 0x14

.field public static v:I = 0xf


# instance fields
.field public a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

.field public b:J

.field public c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/opay/face/sdk/entity/OFace;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lq3a;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:J

.field public n:J

.field public final o:Lcom/opay/face/phoneface/common/BlinkDetector;

.field public final p:Lcom/opay/face/phoneface/common/BlinkDetector;

.field public q:Z

.field public r:Lcom/opay/face/phoneface/common/MotionDetector$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;Lq3a;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->b:J

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Lcom/opay/face/phoneface/common/MotionDetector;->d:Ljava/util/List;

    .line 16
    .line 17
    iput-wide v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->e:J

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->f:I

    .line 21
    .line 22
    iput v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->g:I

    .line 23
    .line 24
    iput v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->h:I

    .line 25
    .line 26
    iput v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 27
    .line 28
    const-wide/16 v2, 0x640

    .line 29
    .line 30
    iput-wide v2, v0, Lcom/opay/face/phoneface/common/MotionDetector;->n:J

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->q:Z

    .line 33
    .line 34
    new-instance v1, Lcom/opay/face/phoneface/common/MotionDetector$b;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/opay/face/phoneface/common/MotionDetector$b;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->r:Lcom/opay/face/phoneface/common/MotionDetector$b;

    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    iput-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 44
    .line 45
    move-object/from16 v1, p2

    .line 46
    .line 47
    iput-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->j:Lq3a;

    .line 48
    .line 49
    new-instance v1, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getMotionStartDelayTime()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sput v1, Lcom/opay/face/phoneface/common/MotionDetector;->t:I

    .line 63
    .line 64
    iget-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getAlignEye()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sput v1, Lcom/opay/face/phoneface/common/MotionDetector;->u:I

    .line 71
    .line 72
    iget-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getAlignMouth()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sput v1, Lcom/opay/face/phoneface/common/MotionDetector;->v:I

    .line 79
    .line 80
    new-instance v1, Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 81
    .line 82
    iget-object v3, v0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 83
    .line 84
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 85
    .line 86
    const-string v8, "Left"

    .line 87
    .line 88
    const-wide/16 v4, 0x3e8

    .line 89
    .line 90
    move-object v2, v1

    .line 91
    invoke-direct/range {v2 .. v8}, Lcom/opay/face/phoneface/common/BlinkDetector;-><init>(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;JDLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->o:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 95
    .line 96
    new-instance v1, Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 97
    .line 98
    iget-object v10, v0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 99
    .line 100
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 101
    .line 102
    const-string v15, "Right"

    .line 103
    .line 104
    const-wide/16 v11, 0x3e8

    .line 105
    .line 106
    move-object v9, v1

    .line 107
    invoke-direct/range {v9 .. v15}, Lcom/opay/face/phoneface/common/BlinkDetector;-><init>(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;JDLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, v0, Lcom/opay/face/phoneface/common/MotionDetector;->p:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public A()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->p:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/phoneface/common/BlinkDetector;->a()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final B()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getDifficulty()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public C(Lcom/opay/face/sdk/entity/OFace;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/opay/face/sdk/entity/OFace;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->e()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    const-wide/16 v2, 0x3e8

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method public final D(Lcom/opay/face/sdk/entity/OFace;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->s()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/opay/face/phoneface/common/MotionDetector;->u:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->y()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget v0, Lcom/opay/face/phoneface/common/MotionDetector;->u:I

    .line 14
    .line 15
    if-lt p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public final E()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->b:J

    .line 2
    .line 3
    sget v2, Lcom/opay/face/phoneface/common/MotionDetector;->t:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-lez v4, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public F()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 6
    .line 7
    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->e:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->b:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->c()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public I(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->q:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->o:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/common/BlinkDetector;->b(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->p:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/common/BlinkDetector;->b(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->b:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->w()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->b:J

    .line 9
    .line 10
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getAntiHackSuccessTimes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d(Lcom/opay/face/sdk/entity/OFace;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->u()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/opay/face/phoneface/common/MotionDetector;->v:I

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public e(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->BLINK:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->B()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->s()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->t()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->r()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_3
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->q(Lcom/opay/face/sdk/entity/OFace;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->H()V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "---------- detectBlink is OK! ----------"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_4
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 65
    .line 66
    return-object p1
.end method

.method public final f(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isOcclusionDetect()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->j:Lq3a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lq3a;->g(Lcom/opay/face/sdk/entity/OFace;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->C()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getWearSunglassesTh()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-le v0, v1, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "wear sunglasses:"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->C()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->f:I

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    iput p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->f:I

    .line 58
    .line 59
    iput v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->g:I

    .line 60
    .line 61
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_WEAR_SUNGLASSES:Lcom/opay/face/phoneface/common/FaceState;

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->B()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getWearMaskTh()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-le v0, v1, :cond_1

    .line 75
    .line 76
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "wear mask:"

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->B()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->f:I

    .line 103
    .line 104
    add-int/lit8 p1, p1, 0x1

    .line 105
    .line 106
    iput p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->f:I

    .line 107
    .line 108
    iput v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->g:I

    .line 109
    .line 110
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_WEAR_MASK:Lcom/opay/face/phoneface/common/FaceState;

    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_1
    iget p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->g:I

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    iput p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->g:I

    .line 118
    .line 119
    const/4 v0, 0x5

    .line 120
    if-ge p1, v0, :cond_2

    .line 121
    .line 122
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_2
    const/4 p1, 0x0

    .line 126
    return-object p1
.end method

.method public g(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->FLASH:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->f(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->i(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->u()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    sget-object p1, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "---------- detectFlash is OK!"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 43
    .line 44
    return-object p1
.end method

.method public h(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 1

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->FRONT:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->f(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->D(Lcom/opay/face/sdk/entity/OFace;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_CLOSING_EYE:Lcom/opay/face/phoneface/common/FaceState;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->d(Lcom/opay/face/sdk/entity/OFace;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_OPENING_MOUTH:Lcom/opay/face/phoneface/common/FaceState;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->i(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->b()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->H()V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, "---------- detectFront is OK! ----------"

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_5
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 64
    .line 65
    return-object p1
.end method

.method public final i(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isHackDetect()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->j:Lq3a;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lq3a;->f(Lcom/opay/face/sdk/entity/OFace;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "Hack score:"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->n()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, ", "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    sub-long/2addr v4, v0

    .line 47
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "ms"

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->n()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getHackTh()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-le p1, v0, :cond_0

    .line 73
    .line 74
    iget p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->h:I

    .line 75
    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 77
    .line 78
    iput p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->h:I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getAntiHackFailedTimes()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-lt p1, v0, :cond_2

    .line 87
    .line 88
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_HACK:Lcom/opay/face/phoneface/common/FaceState;

    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_0
    iget p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 92
    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    iput p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 99
    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 101
    .line 102
    iput p1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->i:I

    .line 103
    .line 104
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 105
    return-object p1
.end method

.method public j(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->NOD:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->B()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->s()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->t()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->r()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->H()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "---------- detectNod is OK!"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_3
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 56
    .line 57
    return-object p1
.end method

.method public k(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x2

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->j(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public l(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->j(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public m(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->B()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->t()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->r()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->s()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->H()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "---------- detectOpenMouth is OK! ----------"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_3
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 56
    .line 57
    return-object p1
.end method

.method public n(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->SHAKE_HEAD:Lcom/opay/face/phoneface/model/Motion;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->B()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->s()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->r()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_DO_OTHER_AC:Lcom/opay/face/phoneface/common/FaceState;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->t()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->H()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "---------- detectShakeHead is OK! ----------"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_3
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 56
    .line 57
    return-object p1
.end method

.method public o(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->n(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public p(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->n(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final q(Lcom/opay/face/sdk/entity/OFace;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->o:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->r()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->e()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/opay/face/phoneface/common/BlinkDetector;->c([IJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->p:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->x()[I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->e()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/opay/face/phoneface/common/BlinkDetector;->c([IJ)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method public final r()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->NOD:Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->v(Lcom/opay/face/phoneface/model/Motion;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getNodTh()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final s()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->v(Lcom/opay/face/phoneface/model/Motion;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getOpenMouthTh()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->SHAKE_HEAD:Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/opay/face/phoneface/common/MotionDetector;->v(Lcom/opay/face/phoneface/model/Motion;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getShakeHeadTh()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->l:Z

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->m:J

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Lcom/opay/face/phoneface/common/MotionDetector;->m:J

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    iget-wide v4, p0, Lcom/opay/face/phoneface/common/MotionDetector;->n:J

    .line 22
    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-ltz v0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public final v(Lcom/opay/face/phoneface/model/Motion;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->r:Lcom/opay/face/phoneface/common/MotionDetector$b;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/opay/face/phoneface/common/MotionDetector$b;->b(Lcom/opay/face/phoneface/model/Motion;)Ljava/util/Comparator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/opay/face/sdk/entity/OFace;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->c:Ljava/util/Queue;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->r:Lcom/opay/face/phoneface/common/MotionDetector$b;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/opay/face/phoneface/common/MotionDetector$b;->b(Lcom/opay/face/phoneface/model/Motion;)Ljava/util/Comparator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/opay/face/sdk/entity/OFace;

    .line 36
    .line 37
    sget-object v2, Lcom/opay/face/phoneface/common/MotionDetector$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    aget p1, v2, p1

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eq p1, v2, :cond_5

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    if-eq p1, v2, :cond_4

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    if-eq p1, v2, :cond_3

    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    if-eq p1, v2, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x7

    .line 58
    if-eq p1, v2, :cond_1

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    if-eq p1, v2, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/sdk/entity/OFace;->y()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v1}, Lcom/opay/face/sdk/entity/OFace;->y()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :goto_0
    sub-int/2addr p1, v0

    .line 74
    return p1

    .line 75
    :cond_1
    invoke-virtual {v0}, Lcom/opay/face/sdk/entity/OFace;->s()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v1}, Lcom/opay/face/sdk/entity/OFace;->s()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v1}, Lcom/opay/face/sdk/entity/OFace;->v()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {v1}, Lcom/opay/face/sdk/entity/OFace;->D()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v0}, Lcom/opay/face/sdk/entity/OFace;->u()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v1}, Lcom/opay/face/sdk/entity/OFace;->u()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {v0}, Lcom/opay/face/sdk/entity/OFace;->i()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {v1}, Lcom/opay/face/sdk/entity/OFace;->i()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 121
    return p1
.end method

.method public final w()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->e:J

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->e:J

    .line 20
    .line 21
    sub-long/2addr v0, v2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->e:J

    .line 27
    .line 28
    return-wide v0
.end method

.method public final x(Lcom/opay/face/sdk/entity/OFace;Lcom/opay/face/phoneface/model/Motion;)Lcom/opay/face/phoneface/common/FaceState;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->m()[I

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector$a;->a:[I

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "---------- detect 9\uff1aFlash ----------"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lsfa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "---------- detect 8\uff1aNod ----------"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lsfa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "---------- detect 7\uff1aShakeHead ----------"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lsfa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "---------- detect 2\uff1aOpenMouth ----------"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lsfa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_4
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "---------- detect 1\uff1aBlink ----------"

    .line 91
    .line 92
    invoke-static {v0, v1}, Lsfa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    .line 98
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_5
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 107
    .line 108
    const-string v1, "---------- detect A\uff1aFront ----------"

    .line 109
    .line 110
    invoke-static {v0, v1}, Lsfa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    .line 116
    sget-object v0, Lcom/opay/face/phoneface/common/MotionDetector;->s:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/opay/face/phoneface/common/MotionDetector;->k:Ljava/lang/String;

    .line 122
    .line 123
    :cond_0
    :goto_0
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->FRONT:Lcom/opay/face/phoneface/model/Motion;

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    if-eq p2, v0, :cond_2

    .line 127
    .line 128
    sget-object v2, Lcom/opay/face/phoneface/model/Motion;->BLINK:Lcom/opay/face/phoneface/model/Motion;

    .line 129
    .line 130
    if-eq p2, v2, :cond_2

    .line 131
    .line 132
    sget-object v2, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 133
    .line 134
    if-ne p2, v2, :cond_1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    move-object v2, v1

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/opay/face/util/FaceCheckUtils;->a(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    sget-object v3, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 144
    .line 145
    if-eq v2, v3, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->c()V

    .line 148
    .line 149
    .line 150
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_POSE:Lcom/opay/face/phoneface/common/FaceState;

    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->a()V

    .line 154
    .line 155
    .line 156
    iget-object v3, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isShakeDetect()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    if-eq p2, v0, :cond_5

    .line 165
    .line 166
    sget-object v3, Lcom/opay/face/phoneface/model/Motion;->BLINK:Lcom/opay/face/phoneface/model/Motion;

    .line 167
    .line 168
    if-eq p2, v3, :cond_5

    .line 169
    .line 170
    sget-object v3, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 171
    .line 172
    if-ne p2, v3, :cond_4

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    sget-object v3, Lcom/opay/face/phoneface/model/Motion;->FRONT:Lcom/opay/face/phoneface/model/Motion;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_5
    :goto_3
    invoke-static {p1}, Lcom/opay/face/util/FaceCheckUtils;->c(Lcom/opay/face/sdk/entity/OFace;)Lcom/opay/face/phoneface/common/FaceState;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/opay/face/sdk/entity/OFace;->w()F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iget-object v4, p0, Lcom/opay/face/phoneface/common/MotionDetector;->a:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getQualityTh()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    int-to-float v4, v4

    .line 193
    cmpg-float v3, v3, v4

    .line 194
    .line 195
    if-gez v3, :cond_7

    .line 196
    .line 197
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_LOW_QUALITY:Lcom/opay/face/phoneface/common/FaceState;

    .line 198
    .line 199
    return-object p1

    .line 200
    :cond_7
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->E()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_8

    .line 205
    .line 206
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->NONE:Lcom/opay/face/phoneface/common/FaceState;

    .line 207
    .line 208
    return-object p1

    .line 209
    :cond_8
    if-eqz v2, :cond_a

    .line 210
    .line 211
    sget-object v3, Lcom/opay/face/phoneface/common/FaceState;->OK:Lcom/opay/face/phoneface/common/FaceState;

    .line 212
    .line 213
    if-eq v2, v3, :cond_a

    .line 214
    .line 215
    if-eq p2, v0, :cond_9

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->B()Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_a

    .line 222
    .line 223
    :cond_9
    invoke-virtual {p0}, Lcom/opay/face/phoneface/common/MotionDetector;->c()V

    .line 224
    .line 225
    .line 226
    sget-object p1, Lcom/opay/face/phoneface/common/FaceState;->ERROR_SHAKE:Lcom/opay/face/phoneface/common/FaceState;

    .line 227
    .line 228
    return-object p1

    .line 229
    :cond_a
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/common/MotionDetector;->C(Lcom/opay/face/sdk/entity/OFace;)V

    .line 230
    .line 231
    .line 232
    return-object v1

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/opay/face/phoneface/common/MotionDetector;->m:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public z()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/common/MotionDetector;->o:Lcom/opay/face/phoneface/common/BlinkDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/phoneface/common/BlinkDetector;->a()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
