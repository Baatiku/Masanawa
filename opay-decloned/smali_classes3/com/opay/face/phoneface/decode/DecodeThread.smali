.class public final Lcom/opay/face/phoneface/decode/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final e:Ljava/lang/String; = "DecodeThread"


# instance fields
.field public final a:Lb87;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:Landroid/content/Context;

.field public d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lb87;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->a:Lb87;

    .line 5
    .line 6
    invoke-interface {p1}, Lb87;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->c:Landroid/content/Context;

    .line 11
    .line 12
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->b:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->b:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "DecodeThread"

    .line 9
    .line 10
    const-string v2, "InterruptedException"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/opay/face/util/Logs;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Thread;->stop()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->d:Landroid/os/Handler;

    .line 22
    .line 23
    return-object v0
.end method

.method public final b(Lq3a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->a:Lb87;

    .line 2
    .line 3
    invoke-interface {v0}, Lb87;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lq3a;->k(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x5

    .line 14
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/decode/DecodeThread;->c(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/16 v0, -0x190

    .line 19
    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/16 v0, -0x1bc

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v0, -0x1bd

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    const/16 p1, 0x15

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/decode/DecodeThread;->c(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/16 p1, 0x16

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/decode/DecodeThread;->c(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    const/16 p1, 0x14

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/decode/DecodeThread;->c(I)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->a:Lb87;

    .line 2
    .line 3
    invoke-interface {v0}, Lb87;->getBaseCameraHandler()Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/decode/DecodeThread;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "DecodeThread start..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lq3a;->n()Lq3a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->a:Lb87;

    .line 16
    .line 17
    invoke-interface {v2}, Lb87;->getFaceConfig()Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->getPitchCalibration()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lq3a;->p(I)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcsd;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->a:Lb87;

    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Lcsd;-><init>(Lb87;Lq3a;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->d:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/opay/face/phoneface/decode/DecodeThread;->b:Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/opay/face/phoneface/decode/DecodeThread;->b(Lq3a;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lq3a;->o()V

    .line 49
    .line 50
    .line 51
    const-string v1, "DecodeThread exit..."

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
