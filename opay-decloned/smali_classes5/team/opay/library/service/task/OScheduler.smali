.class public Lteam/opay/library/service/task/OScheduler;
.super Ljava/lang/Object;
.source "OScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/library/service/task/OScheduler$b;,
        Lteam/opay/library/service/task/OScheduler$d;,
        Lteam/opay/library/service/task/OScheduler$c;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static volatile e:Li87;

.field public static volatile f:Li87;

.field public static volatile g:Li87;

.field public static h:Landroid/os/Handler;

.field public static i:Lcfa;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lteam/opay/library/service/task/OScheduler;->a:I

    .line 10
    .line 11
    add-int/lit8 v1, v0, -0x1

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sput v4, Lteam/opay/library/service/task/OScheduler;->b:I

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    add-int/lit8 v5, v0, 0x1

    .line 28
    .line 29
    sput v5, Lteam/opay/library/service/task/OScheduler;->c:I

    .line 30
    .line 31
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    const-wide/16 v0, 0xf

    .line 34
    .line 35
    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    sput-wide v6, Lteam/opay/library/service/task/OScheduler;->d:J

    .line 40
    .line 41
    new-instance v0, Lngf;

    .line 42
    .line 43
    invoke-direct {v0}, Lngf;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lteam/opay/library/service/task/OScheduler;->e:Li87;

    .line 47
    .line 48
    new-instance v0, Lzag;

    .line 49
    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    .line 52
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 53
    .line 54
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v10, Lteam/opay/library/service/task/OScheduler$c;

    .line 58
    .line 59
    const-string v2, "OS-Work"

    .line 60
    .line 61
    invoke-direct {v10, v2}, Lteam/opay/library/service/task/OScheduler$c;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v3, v1

    .line 65
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Lzag;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/library/service/task/OScheduler;->f:Li87;

    .line 72
    .line 73
    new-instance v0, Lzag;

    .line 74
    .line 75
    new-instance v1, Lteam/opay/library/service/task/OScheduler$c;

    .line 76
    .line 77
    const-string v2, "OS-FIFO"

    .line 78
    .line 79
    invoke-direct {v1, v2}, Lteam/opay/library/service/task/OScheduler$c;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Lzag;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lteam/opay/library/service/task/OScheduler;->g:Li87;

    .line 90
    .line 91
    new-instance v0, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Lteam/opay/library/service/task/OScheduler$a;

    .line 98
    .line 99
    invoke-direct {v2}, Lteam/opay/library/service/task/OScheduler$a;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lteam/opay/library/service/task/OScheduler;->h:Landroid/os/Handler;

    .line 106
    .line 107
    new-instance v0, Lr43;

    .line 108
    .line 109
    invoke-direct {v0}, Lr43;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/library/service/task/OScheduler;->i:Lcfa;

    .line 113
    .line 114
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

.method public static synthetic a(Lyfe;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/library/service/task/OScheduler;->h(Lyfe;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lyfe;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/library/service/task/OScheduler;->g(Lyfe;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(I)Li87;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/library/service/task/OScheduler;->e(I)Li87;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lyfe;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/library/service/task/OScheduler;->i(Lyfe;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(I)Li87;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lteam/opay/library/service/task/OScheduler;->g:Li87;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget-object p0, Lteam/opay/library/service/task/OScheduler;->f:Li87;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    sget-object p0, Lteam/opay/library/service/task/OScheduler;->e:Li87;

    .line 18
    .line 19
    :goto_0
    return-object p0
.end method

.method public static f()Lcfa;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/library/service/task/OScheduler;->i:Lcfa;

    .line 2
    .line 3
    return-object v0
.end method

.method public static g(Lyfe;)V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/library/service/task/OScheduler;->h:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lyfe;->a:I

    .line 8
    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v1, Lteam/opay/library/service/task/OScheduler;->h:Landroid/os/Handler;

    .line 14
    .line 15
    iget-wide v2, p0, Lyfe;->d:J

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lteam/opay/library/service/task/OScheduler;->f()Lcfa;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Task continue delayed. "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "OScheduler"

    .line 42
    .line 43
    invoke-interface {v0, v1, p0}, Lcfa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static h(Lyfe;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lyfe;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lyfe;->b:Li87;

    .line 5
    .line 6
    iget-object v1, p0, Lyfe;->c:Lteam/opay/library/service/task/a;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Li87;->a(Lteam/opay/library/service/task/a;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lteam/opay/library/service/task/OScheduler;->f()Lcfa;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Task post to executor. "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "OScheduler"

    .line 33
    .line 34
    invoke-interface {v0, v1, p0}, Lcfa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static i(Lyfe;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lyfe;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lyfe;->d:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lteam/opay/library/service/task/OScheduler;->g(Lyfe;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Lteam/opay/library/service/task/OScheduler;->h(Lyfe;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/String;)Lteam/opay/library/service/task/OScheduler$b;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/library/service/task/OScheduler$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1, p0, v1}, Lteam/opay/library/service/task/OScheduler$b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/library/service/task/OScheduler$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
