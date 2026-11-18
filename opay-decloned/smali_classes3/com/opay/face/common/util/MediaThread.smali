.class public Lcom/opay/face/common/util/MediaThread;
.super Landroid/os/HandlerThread;
.source "MediaThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final d:Ljava/lang/String; = "MediaThread"


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/content/Context;

.field public volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/opay/face/common/util/MediaThread;->b:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/util/MediaThread;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/opay/face/common/util/MediaThread;->c:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/16 v2, -0x3e8

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/opay/face/common/util/MediaThread;->c:Z

    .line 18
    .line 19
    invoke-static {}, Ln59;->a()Ln59;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ln59;->d()V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/opay/face/common/util/MediaThread;->d:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "msg quit."

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    invoke-static {}, Ln59;->a()Ln59;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/opay/face/common/util/MediaThread;->b:Landroid/content/Context;

    .line 39
    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Ln59;->c(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    return v3
.end method

.method public onLooperPrepared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/opay/face/common/util/MediaThread;->c:Z

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/opay/face/common/util/MediaThread;->a:Landroid/os/Handler;

    .line 17
    .line 18
    return-void
.end method

.method public quit()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/common/util/MediaThread;->d:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "quit."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public quitSafely()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/opay/face/common/util/MediaThread;->d:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "quitSafely."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method
