.class public final Lteam/opay/olocation/LocationUpdatesService;
.super Landroid/app/Service;
.source "LocationUpdatesService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/olocation/LocationUpdatesService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 V2\u00020\u0001:\u0001WB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001b\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0019\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\r\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\r\u0010\u0018\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u0015\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u001f\u0010\"\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0003J\u0017\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0003J\u000f\u0010+\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0003J\u000f\u0010,\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0003J\u000f\u0010-\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010=\u001a\u00020%8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010C\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010BR\u0014\u0010D\u001a\u00020>8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008*\u0010@R\u0016\u0010G\u001a\u00020E8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010FR\u0016\u0010J\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010IR\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010LR\u0014\u0010O\u001a\u00020\u001b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008+\u0010NR\u0016\u0010Q\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010NR\u0016\u0010S\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010RR\u0014\u0010T\u001a\u00020>8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010@R\u0014\u0010U\u001a\u00020>8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\'\u0010@\u00a8\u0006X"
    }
    d2 = {
        "Lteam/opay/olocation/LocationUpdatesService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "",
        "onCreate",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "",
        "onUnbind",
        "(Landroid/content/Intent;)Z",
        "onRebind",
        "(Landroid/content/Intent;)V",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "n",
        "u",
        "s",
        "Landroid/content/Context;",
        "context",
        "",
        "j",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "i",
        "id",
        "Landroid/app/Notification;",
        "notification",
        "f",
        "(ILandroid/app/Notification;)V",
        "t",
        "Landroid/location/Location;",
        "location",
        "o",
        "(Landroid/location/Location;)V",
        "r",
        "g",
        "k",
        "h",
        "m",
        "()Landroid/app/Notification;",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "a",
        "Lcom/google/android/gms/location/FusedLocationProviderClient;",
        "mFusedLocationClient",
        "Lcom/google/android/gms/location/LocationCallback;",
        "b",
        "Lcom/google/android/gms/location/LocationCallback;",
        "mLocationCallback",
        "Lcom/google/android/gms/location/LocationRequest;",
        "c",
        "Lcom/google/android/gms/location/LocationRequest;",
        "mLocationRequest",
        "d",
        "Landroid/location/Location;",
        "mLocation",
        "",
        "e",
        "J",
        "lastUpdateLocation",
        "Z",
        "bLocationAvailability",
        "MIN_UPDATE_LOCATION",
        "Ljava/util/concurrent/Executor;",
        "Ljava/util/concurrent/Executor;",
        "diskIOThreadPool",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "mainThreadHandler",
        "Landroid/app/NotificationManager;",
        "Landroid/app/NotificationManager;",
        "mNotificationManager",
        "Ljava/lang/String;",
        "TAG",
        "l",
        "CHANNEL_ID",
        "I",
        "NOTIFICATION_ID",
        "UPDATE_INTERVAL_IN_MILLISECONDS",
        "FASTEST_UPDATE_INTERVAL_IN_MILLISECONDS",
        "p",
        "Companion",
        "olocation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final p:Lteam/opay/olocation/LocationUpdatesService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/location/FusedLocationProviderClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/google/android/gms/location/LocationCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/google/android/gms/location/LocationRequest;

.field public d:Landroid/location/Location;

.field public e:J

.field public f:Z

.field public final g:J

.field public h:Ljava/util/concurrent/Executor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroid/app/NotificationManager;

.field public final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I

.field public final n:J

.field public final o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/olocation/LocationUpdatesService$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/olocation/LocationUpdatesService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/olocation/LocationUpdatesService;->p:Lteam/opay/olocation/LocationUpdatesService$Companion;

    .line 8
    .line 9
    const-string v0, "0"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/olocation/LocationUpdatesService;->q:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "1"

    .line 14
    .line 15
    sput-object v0, Lteam/opay/olocation/LocationUpdatesService;->r:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "2"

    .line 18
    .line 19
    sput-object v0, Lteam/opay/olocation/LocationUpdatesService;->s:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "3"

    .line 22
    .line 23
    sput-object v0, Lteam/opay/olocation/LocationUpdatesService;->t:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "KEY_LAUNCHER_TYPE"

    .line 26
    .line 27
    sput-object v0, Lteam/opay/olocation/LocationUpdatesService;->u:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/olocation/LocationUpdatesService;->f:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x1388

    .line 8
    .line 9
    iput-wide v0, p0, Lteam/opay/olocation/LocationUpdatesService;->g:J

    .line 10
    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "newSingleThreadExecutor()"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->h:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->i:Landroid/os/Handler;

    .line 32
    .line 33
    const-string v0, "LocationUpdatesService"

    .line 34
    .line 35
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->k:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "gps_channel_01"

    .line 38
    .line 39
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->l:Ljava/lang/String;

    .line 40
    .line 41
    const v0, 0xbc614e    # 1.729998E-38f

    .line 42
    .line 43
    .line 44
    iput v0, p0, Lteam/opay/olocation/LocationUpdatesService;->m:I

    .line 45
    .line 46
    const-wide/16 v0, 0x2710

    .line 47
    .line 48
    iput-wide v0, p0, Lteam/opay/olocation/LocationUpdatesService;->n:J

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    int-to-long v2, v2

    .line 52
    div-long/2addr v0, v2

    .line 53
    iput-wide v0, p0, Lteam/opay/olocation/LocationUpdatesService;->o:J

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic a(Lteam/opay/olocation/LocationUpdatesService;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/olocation/LocationUpdatesService;->l(Lteam/opay/olocation/LocationUpdatesService;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/olocation/LocationUpdatesService;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/olocation/LocationUpdatesService;->p(Lteam/opay/olocation/LocationUpdatesService;Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/location/Location;Lteam/opay/olocation/LocationUpdatesService;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/olocation/LocationUpdatesService;->q(Landroid/location/Location;Lteam/opay/olocation/LocationUpdatesService;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lteam/opay/olocation/LocationUpdatesService;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/olocation/LocationUpdatesService;->o(Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lteam/opay/olocation/LocationUpdatesService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/olocation/LocationUpdatesService;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final l(Lteam/opay/olocation/LocationUpdatesService;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "task"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Landroid/location/Location;

    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/olocation/LocationUpdatesService;->d:Landroid/location/Location;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const-string p1, "mLocation"

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/olocation/LocationUpdatesService;->o(Landroid/location/Location;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lwj8;->a:Lwj8;

    .line 47
    .line 48
    const-string p1, "Failed to get location."

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lwj8;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public static final p(Lteam/opay/olocation/LocationUpdatesService;Landroid/location/Location;)V
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$location"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/olocation/LocationUpdatesService;->d:Landroid/location/Location;

    .line 12
    .line 13
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lteam/opay/olocation/OLocationManager;->r(Landroid/location/Location;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-wide v2, p0, Lteam/opay/olocation/LocationUpdatesService;->e:J

    .line 23
    .line 24
    sub-long/2addr v0, v2

    .line 25
    iget-wide v2, p0, Lteam/opay/olocation/LocationUpdatesService;->g:J

    .line 26
    .line 27
    cmp-long v4, v0, v2

    .line 28
    .line 29
    if-gez v4, :cond_0

    .line 30
    .line 31
    sget-object p1, Lwj8;->a:Lwj8;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "update too fast :"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    iget-wide v3, p0, Lteam/opay/olocation/LocationUpdatesService;->e:J

    .line 48
    .line 49
    sub-long/2addr v1, v3

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lwj8;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    sget-object v0, Lwj8;->a:Lwj8;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "lat:"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "  lng:"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lwj8;->a(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iput-wide v0, p0, Lteam/opay/olocation/LocationUpdatesService;->e:J

    .line 104
    .line 105
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->i:Landroid/os/Handler;

    .line 106
    .line 107
    new-instance v1, Llj8;

    .line 108
    .line 109
    invoke-direct {v1, p1, p0}, Llj8;-><init>(Landroid/location/Location;Lteam/opay/olocation/LocationUpdatesService;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static final q(Landroid/location/Location;Lteam/opay/olocation/LocationUpdatesService;)V
    .locals 1

    .line 1
    const-string v0, "$location"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/olocation/OLocationManager;->a:Lteam/opay/olocation/OLocationManager;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lteam/opay/olocation/OLocationManager;->f(Landroid/location/Location;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/olocation/OLocationManager;->i()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/olocation/LocationUpdatesService;->u()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final f(ILandroid/app/Notification;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 7
    .line 8
    iget-wide v1, p0, Lteam/opay/olocation/LocationUpdatesService;->n:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "mLocationRequest"

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :cond_0
    iget-wide v3, p0, Lteam/opay/olocation/LocationUpdatesService;->o:J

    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v1, v0

    .line 38
    :goto_0
    const/16 v0, 0x64

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/app/NotificationManager;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->j:Landroid/app/NotificationManager;

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1a

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    sget v0, Lteam/opay/olocation/R$string;->app_name:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "getString(R.string.app_name)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lij8;->a()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/olocation/LocationUpdatesService;->l:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-static {v1, v0, v2}, Lqr6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lteam/opay/olocation/LocationUpdatesService;->j:Landroid/app/NotificationManager;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const-string v1, "mNotificationManager"

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    :cond_0
    invoke-static {v1, v0}, Lnr6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->h()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lteam/opay/olocation/LocationUpdatesService;->m:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->m()Landroid/app/Notification;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p1

    .line 23
    :catch_0
    const-string p1, ""

    .line 24
    .line 25
    return-object p1
.end method

.method public final k()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lkj8;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lkj8;-><init>(Lteam/opay/olocation/LocationUpdatesService;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Lwj8;->a:Lwj8;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "Lost location permission."

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lwj8;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method public final m()Landroid/app/Notification;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/high16 v2, 0x10000000

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "Intent(Settings.ACTION_A\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "package"

    .line 26
    .line 27
    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v3, 0x1f

    .line 37
    .line 38
    if-lt v2, v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/util/UUID;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/high16 v5, 0x44000000    # 512.0f

    .line 53
    .line 54
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/util/UUID;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/high16 v5, 0x8000000

    .line 72
    .line 73
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_0
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 78
    .line 79
    invoke-direct {v3, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget v5, Lteam/opay/olocation/R$string;->location_updates_label:I

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->C(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const-string v5, "applicationContext"

    .line 101
    .line 102
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v4}, Lteam/opay/olocation/LocationUpdatesService;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->B(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->A(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->Q(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const/4 v3, -0x1

    .line 122
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->S(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget v3, Lteam/opay/olocation/R$drawable;->olocation_icon_notication_logo:I

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->Y(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    invoke-virtual {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->k0(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const/16 v3, 0x1a

    .line 141
    .line 142
    if-lt v2, v3, :cond_1

    .line 143
    .line 144
    iget-object v2, p0, Lteam/opay/olocation/LocationUpdatesService;->l:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->v(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 147
    .line 148
    .line 149
    :cond_1
    const/4 v2, 0x5

    .line 150
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->F(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    .line 152
    .line 153
    new-array v0, v0, [J

    .line 154
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    aput-wide v2, v0, v4

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->i0([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "builder.build()"

    .line 168
    .line 169
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object v0
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->t()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->h:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Ljj8;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ljj8;-><init>(Lteam/opay/olocation/LocationUpdatesService;Landroid/location/Location;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->n()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->i()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwj8;->a:Lwj8;

    .line 5
    .line 6
    const-string v1, "onDestroy service"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lwj8;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->r()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object v1, Lteam/opay/olocation/LocationUpdatesService;->u:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    sget-object v2, Lwj8;->a:Lwj8;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "onStartCommand:"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lwj8;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lteam/opay/olocation/LocationUpdatesService;->q:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->n()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget-object v2, Lteam/opay/olocation/LocationUpdatesService;->r:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->t()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    sget-object v2, Lteam/opay/olocation/LocationUpdatesService;->s:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->u()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    sget-object v2, Lteam/opay/olocation/LocationUpdatesService;->t:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->s()V

    .line 81
    .line 82
    .line 83
    iget v0, p0, Lteam/opay/olocation/LocationUpdatesService;->m:I

    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->m()Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p0, v0, v1}, Lteam/opay/olocation/LocationUpdatesService;->f(ILandroid/app/Notification;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->i()V

    .line 93
    .line 94
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final r()V
    .locals 3

    .line 1
    sget-object v0, Lwj8;->a:Lwj8;

    .line 2
    .line 3
    const-string v1, "Removing location updates"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lwj8;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/olocation/LocationUpdatesService;->b:Lcom/google/android/gms/location/LocationCallback;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Lost location permission. Could not remove updates. "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    sget-object v0, Lwj8;->a:Lwj8;

    .line 2
    .line 3
    const-string v1, "requestLocationUpdates"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lwj8;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/olocation/LocationUpdatesService;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "mLocationRequest"

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :cond_0
    iget-object v2, p0, Lteam/opay/olocation/LocationUpdatesService;->b:Lcom/google/android/gms/location/LocationCallback;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->setMockMode(Z)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->b:Lcom/google/android/gms/location/LocationCallback;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Lteam/opay/olocation/LocationUpdatesService$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lteam/opay/olocation/LocationUpdatesService$a;-><init>(Lteam/opay/olocation/LocationUpdatesService;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lteam/opay/olocation/LocationUpdatesService;->b:Lcom/google/android/gms/location/LocationCallback;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->g()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->k()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->s()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    sget-object v0, Lwj8;->a:Lwj8;

    .line 2
    .line 3
    const-string v1, "stop has call"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lwj8;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/olocation/LocationUpdatesService;->r()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
