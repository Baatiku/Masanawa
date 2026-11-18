.class public Lcom/opay/face/common/util/SensorRingBuffer;
.super Ljava/lang/Object;
.source "SensorRingBuffer.java"


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/opay/face/common/util/SensorRingBuffer;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/opay/face/common/util/SensorRingBuffer;->c:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/opay/face/common/util/SensorRingBuffer;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public final b()Lcom/opay/face/phoneface/model/SensorInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/util/SensorRingBuffer;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/opay/face/phoneface/model/SensorInfo;

    .line 14
    .line 15
    return-object v0
.end method

.method public declared-synchronized c(Lcom/opay/face/phoneface/model/SensorInfo;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/opay/face/phoneface/model/SensorInfo;->getTs()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/opay/face/phoneface/model/SensorInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/opay/face/phoneface/model/SensorInfo;->getTs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long v2, v0, v2

    .line 27
    .line 28
    iget-wide v4, p0, Lcom/opay/face/common/util/SensorRingBuffer;->c:J

    .line 29
    .line 30
    cmp-long v6, v2, v4

    .line 31
    .line 32
    if-lez v6, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/opay/face/phoneface/model/SensorInfo;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/opay/face/phoneface/model/SensorInfo;->getTs()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    cmp-long v4, v0, v2

    .line 63
    .line 64
    if-gtz v4, :cond_1

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/opay/face/phoneface/model/SensorInfo;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/opay/face/phoneface/model/SensorInfo;->getTs()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    sub-long v2, v0, v2

    .line 89
    .line 90
    const-wide/16 v4, 0x32

    .line 91
    .line 92
    cmp-long v6, v2, v4

    .line 93
    .line 94
    if-ltz v6, :cond_4

    .line 95
    .line 96
    :cond_2
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/opay/face/common/util/SensorRingBuffer;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/opay/face/common/util/SensorRingBuffer;->b()Lcom/opay/face/phoneface/model/SensorInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/opay/face/phoneface/model/SensorInfo;->getTs()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    sub-long/2addr v0, v2

    .line 118
    const-wide/16 v2, 0x3b6

    .line 119
    .line 120
    cmp-long v4, v0, v2

    .line 121
    .line 122
    if-ltz v4, :cond_4

    .line 123
    .line 124
    :cond_3
    iget-object v0, p0, Lcom/opay/face/common/util/SensorRingBuffer;->b:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_4
    monitor-exit p0

    .line 130
    return-void

    .line 131
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    throw p1
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/opay/face/common/util/SensorRingBuffer;->a:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method public declared-synchronized e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/opay/face/common/util/SensorRingBuffer;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method
