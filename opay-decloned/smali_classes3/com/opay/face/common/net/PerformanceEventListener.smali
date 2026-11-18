.class public Lcom/opay/face/common/net/PerformanceEventListener;
.super Lokhttp3/EventListener;
.source "PerformanceEventListener.java"


# static fields
.field public static final k:Ljava/lang/String; = "PerformanceEventListener"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public final j:Lcom/opay/face/common/net/model/NetworkMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/opay/face/common/net/model/NetworkMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->i:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->total:J

    .line 14
    .line 15
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "Total:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 28
    .line 29
    iget-wide v1, v1, Lcom/opay/face/common/net/model/NetworkMetrics;->total:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 5
    .line 6
    const-string v0, "------Call Start------"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->i:J

    .line 16
    .line 17
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    iget-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->b:J

    .line 8
    .line 9
    sub-long/2addr p2, v0

    .line 10
    iput-wide p2, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->tcp:J

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p3, "TCP:"

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 25
    .line 26
    iget-wide p3, p3, Lcom/opay/face/common/net/model/NetworkMetrics;->tcp:J

    .line 27
    .line 28
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->b:J

    .line 6
    .line 7
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    iget-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->a:J

    .line 8
    .line 9
    sub-long/2addr p2, v0

    .line 10
    iput-wide p2, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->dns:J

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p3, "DNS:"

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 25
    .line 26
    iget-wide v0, p3, Lcom/opay/face/common/net/model/NetworkMetrics;->dns:J

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->a:J

    .line 6
    .line 7
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->i:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->init:J

    .line 17
    .line 18
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "Init:"

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 31
    .line 32
    iget-wide v0, v0, Lcom/opay/face/common/net/model/NetworkMetrics;->init:J

    .line 33
    .line 34
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->f:J

    .line 6
    .line 7
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    iget-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->e:J

    .line 14
    .line 15
    sub-long/2addr p2, v0

    .line 16
    iput-wide p2, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->requestBody:J

    .line 17
    .line 18
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p3, "Write Body:"

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 31
    .line 32
    iget-wide v0, p3, Lcom/opay/face/common/net/model/NetworkMetrics;->requestBody:J

    .line 33
    .line 34
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->e:J

    .line 6
    .line 7
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->d:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->requestHeader:J

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Write Header:"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 25
    .line 26
    iget-wide v0, v0, Lcom/opay/face/common/net/model/NetworkMetrics;->requestHeader:J

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 5
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->d:J

    .line 6
    .line 7
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->dns:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->i:J

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->init:J

    .line 25
    .line 26
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "Init:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 39
    .line 40
    iget-wide v1, v1, Lcom/opay/face/common/net/model/NetworkMetrics;->init:J

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    iget-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->h:J

    .line 8
    .line 9
    sub-long/2addr p2, v0

    .line 10
    iput-wide p2, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->responseBody:J

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p3, "Read Body:"

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 25
    .line 26
    iget-wide v0, p3, Lcom/opay/face/common/net/model/NetworkMetrics;->responseBody:J

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->h:J

    .line 6
    .line 7
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->g:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->responseHeader:J

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Read Header:"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 25
    .line 26
    iget-wide v0, v0, Lcom/opay/face/common/net/model/NetworkMetrics;->responseHeader:J

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->f:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->transfer:J

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->g:J

    .line 17
    .line 18
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "Transfer:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 31
    .line 32
    iget-wide v1, v1, Lcom/opay/face/common/net/model/NetworkMetrics;->transfer:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Handshake;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/opay/face/common/net/PerformanceEventListener;->c:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Lcom/opay/face/common/net/model/NetworkMetrics;->tls:J

    .line 11
    .line 12
    sget-object p1, Lcom/opay/face/common/net/PerformanceEventListener;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "TLS:"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->j:Lcom/opay/face/common/net/model/NetworkMetrics;

    .line 25
    .line 26
    iget-wide v0, v0, Lcom/opay/face/common/net/model/NetworkMetrics;->tls:J

    .line 27
    .line 28
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/opay/face/common/net/PerformanceEventListener;->c:J

    .line 6
    .line 7
    return-void
.end method
