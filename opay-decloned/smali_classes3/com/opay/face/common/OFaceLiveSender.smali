.class public Lcom/opay/face/common/OFaceLiveSender;
.super Ljava/lang/Object;
.source "OFaceLiveSender.java"


# static fields
.field public static b:Lcom/opay/face/common/OFaceLiveSender;


# instance fields
.field public a:Lp4a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static declared-synchronized b()Lcom/opay/face/common/OFaceLiveSender;
    .locals 2

    .line 1
    const-class v0, Lcom/opay/face/common/OFaceLiveSender;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/opay/face/common/OFaceLiveSender;->b:Lcom/opay/face/common/OFaceLiveSender;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/opay/face/common/OFaceLiveSender;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/opay/face/common/OFaceLiveSender;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/opay/face/common/OFaceLiveSender;->b:Lcom/opay/face/common/OFaceLiveSender;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/opay/face/common/OFaceLiveSender;->b:Lcom/opay/face/common/OFaceLiveSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public a(Lcom/opay/face/phoneface/model/OFaceLiveError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/OFaceLiveSender;->a:Lp4a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lp4a;->a(Lcom/opay/face/phoneface/model/OFaceLiveError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/OFaceLiveSender;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/opay/face/common/OFaceLiveSender;->b:Lcom/opay/face/common/OFaceLiveSender;

    .line 6
    .line 7
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/opay/face/common/OFaceLiveSender;->a:Lp4a;

    .line 3
    .line 4
    return-void
.end method

.method public e(Lp4a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/OFaceLiveSender;->a:Lp4a;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/OFaceLiveSender;->a:Lp4a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lp4a;->b(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
